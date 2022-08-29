#!/usr/bin/env lua
-- verify.lua -- Verifier of Metamath databases written in Lua language.
--   Copyright (C) 2006  Martin Kiselkov

--  This program is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation; either version 2 of the License, or
--  (at your option) any later version.

--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.

--  You should have received a copy of the GNU General Public License along
--  with this program; if not, write to the Free Software Foundation, Inc.,
--  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

-----------------------------------------------------------------------
-- This program requires an Lua 5.1 interpreter.

-- Before using this program, any compressed proofs must be expanded with the
-- Metamath program, e.g.:
--   $ ./metamath 'r set.mm' 'sa p *' 'w s set.mm' q > /dev/null
-- To run the program, type
--   $ lua verify.lua set.mm > set.log
-- and set.log will have the verification results.

-- For more information about the Metamath system see http://metamath.org
-----------------------------------------------------------------------
-- $Date: 2006-10-21 11:54:54 $

-- Can the string `str' be a label?
function is_label(str)  return not string.match(str, "[^%w._-]") end

-- Can the string `str' be a math symbol?
function is_math_sym(str)  return not string.match(str, "[$%s]") end

nesting = 0 -- Current nesting level, ${ increases nesting, $} dec. nesting
consts = {} -- Table of constant. Keys and values are constant names
-- Table of variables. Keys are variable names. Values are tables with
-- entries: {name, nesting}
vars = {}
-- Table of disjoint variable restrictions. {nesting, var1, var2}
d_list = {}
-- Sequence of $e and $f hypotheses in the order in which they have been
-- defined. Keys integers 1, 2, ..., n. Values are hypotheses same as in
-- f_hyp_var or e_hyp
ef_hyp = {}
-- Table of $f hypotheses. Keys are labels of the hypotheses.
-- Values are tables with entries: {const, var, label, nesting}
f_hyp_label = {}
-- Table of $f hypotheses. Keys are names of variables from $f declarations.
-- Values are tables with entries: {const, var, label, nesting}
f_hyp_var = {}
-- Table of $e hypotheses. Keys are labels of the hypotheses.
-- Values are tables with entries: {label, nesting, symbols, man_vars}
e_hyp = {}
-- Table of $a and $p assertions. Keys are labels of the assertions.
-- Values for $a assertions are tables with entries: {label, symbols,
-- man_vars, man_hyp, assert_d_list}. $p assertions have one additional
-- entry: proof
assertions = {}

function check(test, msg) -- If the test fails then print the error message
  if not test then err_msg(msg) end
end

local function concat(seq) -- Concatenate a sequence of strings
  local str = ""
  for k, s in ipairs(seq) do str = str..s.." " end
  return str
end
local function cmp_symbols(symbols1, symbols2) -- Compare string sequences
  if #symbols1 ~= #symbols2 then return false end
  for i, s in pairs(symbols1) do
    if s ~= symbols2[i] then return false end
  end
  return true
end


do -- Proof verification functions
local proof_stack

local function proof_stack_content() -- Format the proof stack into a string
  str = "\nProof stack contains "..#proof_stack.." entries:\n"
  for k, e in ipairs(proof_stack) do
    str = str.."  "..k..": "..concat(e).."\n"
  end
  return str
end

local function after_proof(assertion)
  check(#proof_stack == 1, "More that one entry on stack at the end of proof"
                           ..proof_stack_content())
  check(cmp_symbols(assertion.symbols, proof_stack[1]),
        "After proof verification the proof assertion does not match the "
        .."proof stack\nProof stack entry:\n"..concat(proof_stack[1])
        .."Proof assertion:\n"..concat(assertion.symbols).."\n")
end

 -- Apply substitution map on symbols sequence and return a new sequence
local function apply_subst(symbols, subst)
  local new = {}
  for i, s in ipairs(symbols) do
    if consts[s] then
      table.insert(new, s) -- Copy constants
    else -- Replace variables with substitution
      for i, r in ipairs(subst[s]) do table.insert(new, r) end
    end
  end
  return new
end

-- Process a step of proof that references an $a or $p assertion
local function assertion_step(a)
  local man_hyp_count = #a.man_hyp
  check(man_hyp_count <= #proof_stack, "Assertion "..a.label.." has "
    ..man_hyp_count.." mandatory hypotheses, the proof stack has only "
    ..#proof_stack.." entries"..proof_stack_content())
  local subs = {} -- Substitution map
  for i, h in ipairs(a.man_hyp) do --
    if h.var then -- If the hypothesis in variable `h' a $f hypothesis
      -- Find the corresponding entry on the proof stack
      local entry = proof_stack[#proof_stack - man_hyp_count + i]
      assert(#entry > 0)
      check(entry[1] == h.const, "Could not match $f hypothesis")
      local rpl = {} -- Used to collect the replacement for the variable h.var
      -- Copy everything except the first constant
      for i = 2, #entry do table.insert(rpl, entry[i]) end
      subs[h.var] = rpl -- Store the replacement into the substitution map
    end
  end -- Substitution map has been created
  for k, d in pairs(a.assert_d_list) do -- Check $d restrictions
    assert(subs[d.var1] and subs[d.var2])
    -- The substitutions `subs[d.var1]' and `subs[d.var2]' must have no
    -- variables in common.
    local vars1 = {} -- Variables from the replacement of the variable d.var1
    for k, v in pairs(subs[d.var1]) do
      if not consts[v] then vars1[v] = v end
    end
    local vars2 = {} -- Variables from the replacement of the variable d.var2
    for k, v in pairs(subs[d.var2]) do
      if not consts[v] then
        check(not vars1[v], "$d not disjoint")
        vars2[v] = v
      end
    end
    -- Each possible pair of variables, one from `subs[d.var1]' and one from
    -- `subs[d.var2]', muss have an $d restriction.
    for k, v1 in pairs(vars1) do
      for k, v2 in pairs(vars2) do
        check(d_list[v1.." "..v2] or d_list[v2.." "..v1],
              "Missing $d for variables: "..v1.." "..v2)
      end
    end
  end
  for i, h in pairs(a.man_hyp) do -- Check $e hypotheses
    if h.symbols then
      check(
        cmp_symbols(apply_subst(h.symbols, subs),
           proof_stack[#proof_stack - man_hyp_count + i]),
        "$e hypothesis is not satisfied")
    end
  end -- All mandatory hypotheses have been checked
  -- Remove hypotheses from proof stack
  for i = 1, man_hyp_count do table.remove(proof_stack) end
  -- Push assertion after applying substitutions onto proof stack
  table.insert(proof_stack, apply_subst(a.symbols, subs))
end

function verify_proof(assertion, proof, proof_start)
  proof_stack = {}
  for i = proof_start, #proof do
    local step = proof[i]
    if e_hyp[step] then
      table.insert(proof_stack, e_hyp[step].symbols)
    elseif f_hyp_label[step] then
      table.insert(proof_stack,
                   {f_hyp_label[step].const, f_hyp_label[step].var})
    elseif assertions[step] then
      assertion_step(assertions[step])
    else err_msg("Unknown label "..step) end
  end
  after_proof(assertion)
end

function verify_comp_proof(assertion, proof, proof_start)
  assert(proof[proof_start] == "(")

  local label_list = {} -- Label list
  local found_end_of_label_list = false
  for i = proof_start + 1, #proof do -- Collect labels into label list
    local label = proof[i]
    if label == ")" then
      -- Proof start will now point to the beginning of compressed proof
      proof_start = i + 1
      found_end_of_label_list = true
      break
    end
    check(assertions[label] or f_hyp_label[label] or e_hyp_label[label],
      "Unknown label "..label)
    table.insert(label_list, label)
  end
  check(found_end_of_label_list, "Missing ) in compressed proof")

  proof_stack = {}
  error("Compressed proof format is not supported")

  after_proof(assertion)
end

end -- End of proof verification functions

local function process_assertion(label, stat, is_p)
  print("assertion "..label)
  check(stat[2], "Assertion is too short")
  check(consts[stat[2] ], "Invalid constant in assertion: "..stat[2])

  local man_vars = {} -- Mandatory variables
  local symbols = {} -- Math symbols of the assertion
  for i = 2, #stat do -- Collect math symbols and mandatory variables
    local s = stat[i]
    if is_p and s == "$=" then
      break -- $p math symbols can be ended with $= keyword
    end
    check(consts[s] or vars[s], "Unknown math symbol: "..s)
    check(consts[s] or f_hyp_var[s],
      "Missing $f statement for the variable: " .. s)
    if vars[s] then man_vars[s] = s end
    table.insert(symbols, s)
  end

  for k, e in pairs(e_hyp) do -- Copy mandatory variables from all $e hypotheses
    for k, v in pairs(e.man_vars) do man_vars[v] = v end
  end

  local assert_d_list = {} -- Disjoint variable restrictions for this assertion
  -- Copy all disjoint variable restrictions for assertion mandatory variables
  for k, rest in pairs(d_list) do
    if man_vars[rest.var1] and man_vars[rest.var2] then
      assert_d_list[k] = rest
    end
  end

  local man_hyp = {} -- Mandatory hypotheses for the assertion
  for k, h in ipairs(ef_hyp) do -- Collect all mandatory hypotheses (both $e and $f)
    -- The order of mandatory hypotheses is important
    if man_vars[h.var] or h.symbols then table.insert(man_hyp, h) end
  end
  return {label = label, symbols = symbols, man_vars = man_vars,
          man_hyp = man_hyp, assert_d_list = assert_d_list}
end

local function unnec_stat_label(label) -- Statement label is unnecessary
  if label then err_msg("Unnecessary statement label: " .. label) end
end
local function nec_stat_label(label) -- Statement label is necessary
  check(label, "Statement label is missing")
end

function process_statement(label, stat)
  local keyw = stat[1] -- Statement keyword: $c, $v, $d, $e, $f, $a or $p
  if keyw == "$c" then
    unnec_stat_label(label)
    check(nesting == 0, "Constants must be placed in the outermost block")
    for i = 2, #stat do
      local c = stat[i]
      check(is_math_sym(c), "Constant muss be a math symbol: "..c)
      check(not (consts[c] or vars[c]), "Constant is not unique: "..c)
      consts[c] = c
    end

  elseif keyw == "$v" then
    unnec_stat_label(label)
    for i = 2, #stat do
      local v = stat[i]
      check(is_math_sym(v), "Variable muss be a math symbol: "..v)
      check(not (consts[v] or vars[v]), "Variable is not unique: "..v)
      vars[v] = { name = v, nesting = nesting }
    end

  elseif keyw == "$d" then
    unnec_stat_label(label)
    check(stat[3], "$d declaration is too short")
    local l = {} -- List of variables in the $d statement
    for i = 2, #stat do
      local v = stat[i]
      check(f_hyp_var[v], "Missing $f declaration for variable: "..v)
      check(not l[v], "Duplicate occurance of variable in $d: " .. v)
      l[v] = v
    end
    -- For each pair of distinct variables
    for i = 2, #stat do
      local v1 = stat[i]
      for j = i + 1, #stat do
        local v2 = stat[j]
        -- Add pair to `d_list'
        if not d_list[ v1.." "..v2 ] and not d_list[ v2.." "..v1 ] then
          d_list[ v1.." "..v2 ] = {nesting = nesting, var1 = v1, var2 = v2}
        end
      end
    end

  elseif keyw == "$e" then
    nec_stat_label(label)
    check(stat[2], "$e statement is too short")
    check(consts[stat[2] ], "In $e first symbol muss be a constant: "..stat[2])

    local man_vars = {} -- Mandatory variables
    for i = 2, #stat do -- Collect all mandatory variables
      local s = stat[i]
      check(consts[s] or vars[s], "Unknown math symbol: "..s)
      check(consts[s] or f_hyp_var[s],
        "Missing $f statement for the variable: " .. s)
      if vars[s] then man_vars[s] = s end
    end
    table.remove(stat, 1) -- Remove the $e keyword
    e_hyp[label] = {label = label, nesting = nesting, symbols = stat,
                    man_vars = man_vars}
    table.insert(ef_hyp, e_hyp[label])

  elseif keyw == "$f" then
    nec_stat_label(label)
    check(stat[3], "$f statement is too short")
    check(not stat[4], "$f statement is too long")

    local h = {const = stat[2], var = stat[3], label = label, nesting = nesting}
    check(consts[h.const], "Invalid constant in $f: "..h.const)
    check(vars[h.var], "Invalid variable in $f: "..h.var)
    if f_hyp_var[h.var] then
      err_msg("Duplicate $f statement for variable: "..h.var
        .."\nLabel of the previous $f declaration: "..f_hyp_var[h.var].label)
    end

    f_hyp_var[h.var] = h
    f_hyp_label[h.label] = h
    table.insert(ef_hyp, h)

  elseif keyw == "$a" then
    nec_stat_label(label)
    assertions[label] = process_assertion(label, stat, false)

  elseif keyw == "$p" then
    nec_stat_label(label)
    local assertion = process_assertion(label, stat, true)
    local proof_start
    for i = 2, #stat do
      if stat[i] == "$=" then
        proof_start = i + 1
        break
      end
    end
    check(proof_start, "Missing proof in $p statement")
    if stat[proof_start] == "(" then
      verify_comp_proof(assertion, stat, proof_start)
    else
      verify_proof(assertion, stat, proof_start)
    end
    print("Proof " .. label .. " has been processed")
    assertions[label] = assertion
  else
    err_msg("Invalid statement")
  end
end

statement_label = nil -- Current statement label

do
  -- Table used to collect all tokens of a statement.
  local statement_collector = nil

  -- Table of all used statement labels. It's used to check the uniqueness of a
  -- statement label
  local statement_labels = {}

  function process_token(token)
    if statement_collector then
      if token == "$." then -- End of statement was found
        process_statement(statement_label, statement_collector)
        statement_label = nil
        statement_collector = nil
      else
        table.insert(statement_collector, token)
      end
    else
      if is_label(token) then
        check(not statement_labels[token], "Label is not unique: "..token)
        statement_labels[token] = token
        check(not statement_label, "Statement label is already defined")
        statement_label = token

      elseif token == "${" then
        unnec_stat_label(statement_label)
        nesting = nesting + 1
      elseif token == "$}" then
        unnec_stat_label(statement_label)
        check(nesting > 0, "Too many $}")
        nesting = nesting - 1

        local function clear(tab)
          for k, v in pairs(tab) do
            if v.nesting > nesting then tab[k] = nil end
          end
        end
        clear (vars)
        clear (d_list)
        clear (ef_hyp)
        clear (f_hyp_label)
        clear (f_hyp_var)
        clear (e_hyp)

      elseif token == string.match(token, "%$[cvfedap]") then
        statement_collector = {}
        table.insert(statement_collector, token)
      else err_msg("Invalid token")
      end
    end
  end
end

-- List of names of already included files.
-- It's used to prevent circular file inclusion
local included_files = {}

function process_file(filename)
  local line_num = 1

  function err_msg(msg)
    if statement_label then
      msg = msg.."\nCurrent statement label: "..statement_label
    end
    error(filename .. ":" .. tostring(line_num) .. ":" .. msg)
  end

  -- Test circular file inclusion
  if included_files[filename] then return end
  included_files[filename] = filename

  local in_include = false
  local include_filename = nil

  local function preprocess_inclusion(token)
    if in_include then
      if token == "$]" then
        if include_filename then
          process_file(include_filename)
          include_filename = nil
          in_include = false
        else
          err_msg("File name missing in file inclusion command")
        end
      else
        if string.find(token, "[$%s]") then
          err_msg("Invalid character in file inclusion command")
        end
        if include_filename then
          err_msg("Multiple file names in file inclusion command")
        end
        include_filename = token
      end
    else
      if token == "$[" then
        in_include = true
      else
        process_token(token)
      end
    end
  end

  local in_comment = false

  for line in io.lines(filename) do
    for token in string.gmatch(line, "[^%s]+")
    do
      if in_comment then
        if token == "$)" then in_comment = false end
      else
        if token == "$(" then
          in_comment = true
        else
          preprocess_inclusion(token)
        end
      end
    end
    line_num = line_num + 1
  end

  if in_comment then err_msg("Comment reaching out of file") end
end

if not arg[1] or arg[2] then
  error("Usage: " .. arg[0] .. " METAMATH-DATABASE")
end

process_file(arg[1])
print("All proofs have been verified")

