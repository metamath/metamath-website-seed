




/*
     FILE ARCHIVED ON 3:09:20 Jan 4, 2011 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 17:12:34 Jul 10, 2016.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
*/
//utility stuff

function makeText(text) {
	return document.createTextNode(text);
}

function makeTag(name) {
	return makeEl(name, []);
}

function makeEl(name, contents) {
    var args = [];
    for (var i = 1; i < arguments.length; i++) {
        args[i - 1] = arguments[i];
    }
    return makeElAtt(name, [], args);
}

function makeElAtt(name, attributes, contents) {
    if (!(contents instanceof Array)) {
        cnts = [];
        for (var i = 2; i < arguments.length; i++) {
            cnts[i - 2] = arguments[i];
        }
        contents = cnts;
    }
	var el = document.createElement(name);
	for (i in attributes) {
		el.setAttribute(attributes[i][0], attributes[i][1]);
	}
	for (i in contents) {
		el.appendChild(contents[i]);
	}
	return el;
}

function contains(arr, pred) {
    for (var i in arr)
        if (pred(arr[i])) return true;
    return false;
}

function insertAt(par, el, i) {
    if (par.childNodes[i])
        par.insertBefore(el, par.childNodes[i]);
    else
        par.appendChild(el);
}

/*****************************************************************/

function showpage(thName) {
    var body = document.body;
    body.appendChild(makeEl("h2", makeText("Theorem " + thName)));
    if (ehyps.length > 0) {
        body.appendChild(makeEl("h3", makeText("Hypotheses")));
        var hypTable = makeElAtt("table", [["border", "true"], ["cellspacing", "0"]], makeEl("tbody", makeEl("tr",
            makeEl("td", makeEl("b", makeText("Ref"))),
            makeEl("td", makeEl("b", makeText("Expression"))))));
        for (var i in ehyps) {
            var hyp = refs[ehyps[i]];
            var stCell;
            hypTable.childNodes[0].appendChild(makeEl("tr",
            makeEl("td", makeText(ehyps[i])),
            stCell = makeEl("td")));
            addSym(stCell, hyp.st.split(' '));
        }
        body.appendChild(hypTable);
    }
    if (window['distinct']) {
        var dist = makeEl("p", makeText("Distinct variable groups: "));
        for (var i in distinct) {
            dist.appendChild(makeText("\u00a0\u00a0\u00a0 "));
            for (var j in distinct[i]) {
                addSym(dist, [distinct[i][j]]);
                dist.appendChild(makeText(","));
            }
            dist.removeChild(dist.lastChild);
        }
        body.appendChild(dist);
    }
    var first;
    proofTable = makeEl("table", makeEl("tbody",
        //header
        makeEl("tr", makeElAtt("td", rightAlign, makeEl("b", makeText("Ref"))), makeEl("td", makeEl("b", makeText("Expression")))),
        //first row
        first = getLine(th.rule, 0, refs[th.rule].isHyp, refs[th.rule].st, th.subst)));
    first.th = th;
    body.appendChild(makeEl("hr"));
    body.appendChild(makeEl("h3", makeText("Proof")));
    body.appendChild(proofTable);
}

function expandClose(row) {
    if (!row.th) return false;
    var th = row.th;
    //first find the row in question
    var i;
    var rows = proofTable.childNodes[0];
    for (i in rows.childNodes) {
        if (rows.childNodes[i] == row) break;
    }
    //now remove the entire subtree
    i--;
    var depth = th.depth;
    while (i > 0 && rows.childNodes[i].th && rows.childNodes[i].th.depth > depth) {
        rows.removeChild(rows.childNodes[i]);
        i--;
    }
    i++;
    rows.removeChild(row);
    //now rebuild the subtree
    var doCollapse = row.expanded;
    var ref = refs[th.rule];
    insertAt(rows, row = getLine(th.rule, th.depth, ref.isHyp, ref.st, th.subst, !doCollapse, !doCollapse), i);
    row.th = th;
    if (doCollapse) return false;
    row.expanded = true;
    for (var j in th.hyps) {
        var child = getLine(th.hyps[j].rule, th.depth + 1, refs[th.hyps[j].rule].isHyp,
            ref.hyps[j], th.subst, true);
        child.th = th.hyps[j];
        child.parentRow = row;
        rows.insertBefore(child, row);
    }
    //replace all other rows showing matches with clean ones.
    for (var i in rows.childNodes) {
        var row1 = rows.childNodes[i];
        if (row1 && row1.th) {
            var show = row1 == row || row1.parentRow && row1.parentRow == row;
            if (!show && row1.showing) {
                var newRow;
                if (!row1.th.subst) row1.th.subst = {};
                rows.replaceChild(newRow = getLine(row1.th.rule, row1.th.depth, refs[row1.th.rule].isHyp,
                    refs[row1.th.rule].st, row1.th.subst), row1);
                newRow.th = row1.th;
            }
        }
    }
    return false;
}

function normalizeTh(th, depth) {
    th.depth = depth;
    for (var i in th.hyps) {
        normalizeTh(th.hyps[i], depth + 1);
    }
}

var rightAlign = [["style", "text-align: right"], ["width", "75px"]];

function getLine(label, depth, noLink, matchSt, subst, show, hilite) {
    if (!subst) subst = {};
    var alignDiv;
    var div = makeEl("div", alignDiv = makeEl("span"));

    alignDiv.style.fontFamily = "monospace";
    for (var i = 0; i < depth; i++)
        alignDiv.appendChild(makeText("\u00a0\u00a0"));
    var el;
    div.appendChild(el = makeEl("span", makeText((depth + 1) + "\u00a0\u00a0")));
    el.style.fontSize = "small";
    el.style.color = "#888888";

    var expand = makeElAtt("a", [["href", "#"]],
        makeElAtt("img", [["src", hilite ? "images/selmagglass.png" : "images/magglass.png"],
                ["width", "16"], ["height", "16"],
                ["alt", "show/hide details"]]));
    expand.childNodes[0].style.verticalAlign = "middle";
    div.expanded = false;
    div.appendChild(expand);
    div.appendChild(el = makeEl("span", makeText(" ")));
    el.style.fontFamily = "monospace";

    var toks;
    div.appendChild(toks = makeEl("span"));
    toks.style.verticalAlign = "middle";
    toks.style.display = "inline-block";
    var stat = matchSt.split(' ');
    for (var i in stat) {
        var tok = stat[i];
        if (show) addStatement(toks, [tok], subst[tok] ? subst[tok].split(' ') : [tok]);
        else addSym(toks, subst[tok] ? subst[tok].split(' ') : [tok]);
    }

    var link = !noLink ? makeElAtt("a", [["href", label + ".htm"]], makeText(label))
        : makeText(label);
    var ret = makeEl("tr", makeElAtt("td", rightAlign, link), makeEl("td", div));
    expand.onclick = function() { return expandClose(ret); };
    ret.showing = show;
    return ret;
}

function addStatement(par, toptoks, bottoks) {
    var top, bot, hid;
    var tbl = makeEl("table", makeEl("tbody",
        makeEl("tr", top = makeElAtt("td")),
        makeEl("tr", bot = makeEl("td"),
            hid = makeEl("td", makeText("...")))));
    tbl.className = "tok";
    hid.style.display = "none";
    tbl.onclick = function() {
        bot.style.display = (bot.style.display == "none") ? "table-cell" : "none";
        hid.style.display = (hid.style.display == "none") ? "table-cell" : "none";
    };
    addSym(top, toptoks);
    addSym(bot, bottoks);
    if (isSpace(top.firstChild) || isSpace(bot.firstChild)) {
        par.appendChild(makeText(" "));
    }
    par.appendChild(tbl);
    if (isSpace(top.lastChild) || isSpace(bot.lastChild)) {
        par.appendChild(makeText(" "));
    }
}

function isSpace(node) {
    return node.nodeType == 3 && node.nodeValue == " ";
}

function addSym(el, sym) {
    for (var s in sym) {
        var mysyms = syms[sym[s]];
        if (!mysyms)
            el.appendChild(makeText(" " + sym[s] + " "));
        for (var child in mysyms) {
            if (mysyms[child] instanceof Function) {
                mysyms[child] = mysyms[child]();
            }
            el.appendChild(mysyms[child].cloneNode(true));
        }
    }
}

var syms = {};

function regSym(sym, leftspace, srcName, width, rightspace) {
    var img = function() {
        return makeElAtt("img", [["src", "images/" + srcName],
        ["width", width], ["height", 19], ["alt", sym], ["align", "top"]]);
    };
    var arr = [img];
    if (leftspace == 1) arr = [makeText(" ")].concat(arr);
    if (rightspace == 1) arr = arr.concat([makeText(" ")]);
    syms[sym] = arr;
}

regSym("(",   0, "lp.gif",       5,  0);
regSym(")",   0, "rp.gif",       5,  0);
regSym("->",  1, "to.gif",       15, 1);
regSym("-.",  0, "lnot.gif",     10, 1);
regSym("wff", 0, "_wff.gif",     24, 1);
regSym("|-",  0, "_vdash.gif",   10, 1);
regSym("ph",  0, "_varphi.gif",  11, 0);
regSym("ps",  0, "_psi.gif",     12, 0);
regSym("ch",  0, "_chi.gif",     12, 0);
regSym("th",  0, "_theta.gif",   8,  0);
regSym("ta",  0, "_tau.gif",     10, 0);
regSym("<->", 1, "leftrightarrow.gif", 15, 1);
regSym("\\/", 1, "vee.gif",      11, 1);
regSym("/\\", 1, "wedge.gif",    11, 1);
regSym("et",  0, "_eta.gif",     9,  0);
regSym("ze",  0, "_zeta.gif",    9,  0);
regSym("A.",  0, "forall.gif",   10, 0);
regSym("set", 0, "set.gif",      20, 1);
regSym("x",   0, "_x.gif",       10, 0);
regSym("y",   0, "_y.gif",       9,  0);
regSym("z",   0, "_z.gif",       9,  0);
regSym("w",   0, "_w.gif",       12, 0);
regSym("v",   0, "_v.gif",       9,  0);
regSym("E.",  0, "exists.gif",   9,  0);
regSym("=",   1, "eq.gif",       12, 1);
regSym("e.",  1, "in.gif",       10, 1);
regSym("[",   0, "lbrack.gif",   5, 0);
regSym("/",   1, "solidus.gif",  6, 1);
regSym("]",   0, "rbrack.gif",   5, 0);
regSym("u",   0, "_u.gif",       10, 0);
regSym("f",   0, "_f.gif",       9, 0);
regSym("g",   0, "_g.gif",       9, 0);
regSym("E!",  0, "_e1.gif",      12, 0);
regSym("E*",  0, "_em1.gif",     15, 0);
regSym("{",   0, "lbrace.gif",   6, 0);
regSym("|",   1, "vert.gif",     3, 1);
regSym("}",   0, "rbrace.gif",   6, 0);
regSym("class", 0, "_class.gif", 32, 1);
regSym("A",   0, "_ca.gif",      11, 0);
regSym("B",   0, "_cb.gif",      12, 0);
regSym("C",   0, "_cc.gif",      12, 0);
regSym("D",   0, "_cd.gif",      12, 0);
regSym("P",   0, "_cp.gif",      12, 0);
regSym("R",   0, "_cr.gif",      12, 0);
regSym("S",   0, "_cs.gif",      11, 0);
regSym("T",   0, "_ct.gif",      12, 0);
regSym("=/=", 1, "ne.gif",       12, 1);
regSym("e/",  1, "notin.gif",    10, 1);
regSym("V",   0, "cv.gif",       12, 0);
regSym("[_",  0, "_ulbrack.gif", 6, 0);
regSym("]_",  0, "_urbrack.gif", 5, 0);
regSym("F",   0, "_cf.gif",      13, 0);
regSym("G",   0, "_cg.gif",      12, 0);
regSym("(_",  1, "subseteq.gif", 12, 1);
regSym("(.",  1, "subset.gif",   12, 1);
regSym("\\",  1, "setminus.gif", 8, 1);
regSym("u.",  1, "cup.gif",      10, 1);
regSym("i^i", 1, "cap.gif",      10, 1);
regSym("(/)", 0, "varnothing.gif", 11, 0);
regSym("if",  0, "_if.gif",      11, 0);
regSym(",",   0, "comma.gif",    4, 1);
regSym("si",  0, "_sigma.gif",   10, 0);
regSym("rh",  0, "_rho.gif",     9, 0);
regSym("P~",  0, "scrp.gif",     16, 0);
regSym("<.",  0, "langle.gif",   4, 0);
regSym(">.",  0, "rangle.gif",   4, 0);
regSym("U.",  0, "bigcup.gif",   13, 0);
regSym("|^|", 0, "bigcap.gif",   13, 0);
regSym("U_",  0, "_cupbar.gif",  13, 0);
regSym("|^|_", 0, "_capbar.gif", 13, 0);
regSym("Tr",  0, "_tr.gif",      16, 1);
regSym("E",   0, "ce.gif",       13, 0);
regSym("I",   0, "ci.gif",       8, 0);
regSym("Po",  1, "_po.gif",      16, 1);
regSym("Or",  1, "_or.gif",      18, 1);
regSym("sup", 0, "_sup.gif",     22, 0);
regSym("Fr",  1, "_fr.gif",      15, 1);
regSym("We",  1, "_we.gif",      21, 1);
regSym("Ord", 0, "_ord.gif",     26, 1);
regSym("On",  0, "_on.gif",      20, 0);
regSym("Lim", 0, "_lim.gif",     26, 1);
regSym("suc", 0, "_suc.gif",     22, 1);
regSym("om",  0, "omega.gif",    11, 0);
regSym("X.",  1, "times.gif",    9, 1);
regSym("`'",  0, "_cnv.gif",     10, 0);
regSym("dom", 0, "_dom.gif",     26, 1);
regSym("ran", 0, "_ran.gif",     22, 1);
regSym("|`",  1, "restriction.gif", 5, 1);
regSym('"',   0, "backquote.gif", 7, 0);
regSym("o.",  1, "circ.gif",     8, 1);
regSym("Rel", 0, "_rel.gif",     22, 1);
regSym("Fun", 0, "_fun.gif",     25, 1);
regSym("Fn",  1, "_fn.gif",      17, 1);
regSym(":",   0, "colon.gif",    4, 0);
regSym("-->", 0, "longrightarrow.gif", 23, 0);
regSym("-1-1->", 0, "onetoone.gif", 23, 0);
regSym("-onto->", 0, "onto.gif", 23, 0);
regSym("-1-1-onto->", 0, "onetooneonto.gif", 23, 0);
/* Internet Explorer printing is corrupted by '`', so use '` ' which works */
regSym("`",   0, "backtick.gif", 4, 0);
regSym("Isom", 1, "_isom.gif",   30, 1);
regSym("X_",  0, "_bigtimes.gif", 11, 0);
regSym("|->", 1, "mapsto.gif",   15, 1);
regSym("1st", 0, "_1st.gif",   15, 0);
regSym("2nd", 0, "_2nd.gif",   21, 0);
regSym("h",   0, "_h.gif",     10, 0);
regSym("H",   0, "_ch.gif",    14, 0);
regSym("rec", 0, "_rec.gif",   21, 0);
regSym("^m",  1, "_hatm.gif",  15, 1);
regSym("^pm", 1, "_hatpm.gif", 21, 1);
regSym("+o",  1, "_plo.gif",   18, 1);
regSym(".o",  1, "_cdo.gif",   10, 1);
regSym("^o",  1, "_hato.gif",  11, 1);
regSym("1o",  0, "_1o.gif",    13, 0);
regSym("2o",  0, "_2o.gif",    14, 0);
regSym("Er",  0, "_er.gif",    16, 1);
regSym("/.",  0, "diagup.gif", 14, 0);
regSym("Q",   0, "_cq.gif",    12, 0);
regSym("t",   0, "_t.gif",     7, 0);
regSym("s",   0, "_s.gif",     7, 0);
regSym("r",   0, "_r.gif",     8, 0);
regSym("a",   0, "_a.gif",     9, 0);
regSym("b",   0, "_b.gif",     8, 0);
regSym("c",   0, "_c.gif",     7, 0);
regSym("d",   0, "_d.gif",     9, 0);
regSym("j",   0, "_j.gif",     7, 0);
regSym("k",   0, "_k.gif",     9, 0);
regSym("m",   0, "_m.gif",     14, 0);
regSym("n",   0, "_n.gif",     10, 0);
regSym("o",   0, "_o.gif",     8, 0);
regSym("p",   0, "_p.gif",     10, 0);
regSym("q",   0, "_q.gif",     8, 0);
regSym("J",   0, "_cj.gif",    10, 0);
regSym("K",   0, "_ck.gif",    14, 0);
regSym("L",   0, "_cl.gif",    10, 0);
regSym("M",   0, "_cm.gif",    15, 0);
regSym("N",   0, "_cn.gif",    14, 0);
regSym("U",   0, "_cu.gif",    12, 0);
regSym("W",   0, "_cw.gif",    16, 0);
regSym("X",   0, "_cx.gif",    13, 0);
regSym("Y",   0, "_cy.gif",    12, 0);
regSym("Z",   0, "_cz.gif",    11, 0);
regSym("O",   0, "_co.gif",    12, 0);
regSym("~~",  1, "approx.gif", 13, 1);
regSym("~<_", 1, "preccurlyeq.gif", 11, 1);
regSym("~<",  1, "prec.gif",   11, 1);
regSym("Fin", 0, "_fin.gif",   21, 0);
regSym("card", 0, "_card.gif", 30, 0);
regSym("aleph", 0, "varaleph.gif", 12, 0);
regSym("cf",  0, "__cf.gif",   14, 0);
regSym("+c",  1, "_plc.gif",   17, 1);
regSym("R1",  0, "_r1.gif",    15, 0);
regSym("rank", 0, "_rank.gif", 30, 0);
regSym("N.",  0, "caln.gif",   17, 0);
regSym("+N",  1, "_pln.gif",   22, 1);
regSym(".N",  1, "_cdn.gif",   14, 1);
regSym("<N",  1, "_ltn.gif",   21, 1);
regSym("+pQ", 1, "_plpq.gif",  28, 1);
regSym(".pQ", 1, "_cdpq.gif",  19, 1);
regSym("~Q",  1, "_simq.gif",  21, 1);
regSym("Q.",  0, "calq.gif",   12, 0);
regSym("1Q",  0, "_1q.gif",    16, 0);
regSym("+Q",  1, "_plq.gif",   21, 1);
regSym(".Q",  1, "_cdq.gif",   13, 1);
regSym("*Q",  0, "_astq.gif",  16, 0);
regSym("<Q",  1, "_ltq.gif",   20, 1);
regSym("P.",  0, "calp.gif",   13, 0);
regSym("1P",  0, "_1p.gif",    15, 0);
regSym("+P.", 1, "_plp.gif",   22, 1);
regSym(".P.", 1, "_cdp.gif",   13, 1);
regSym("<P",  1, "_ltp.gif",   19, 1);
regSym("+pR", 1, "_plpr.gif",  28, 1);
regSym(".pR", 1, "_cdpr.gif",  19, 1);
regSym("~R",  1, "_simr.gif",  23, 1);
regSym("R.",  0, "calr.gif",   15, 0);
regSym("0R",  0, "_0r.gif",    18, 0);
regSym("1R",  0, "_1r.gif",    16, 0);
regSym("-1R", 0, "_m1r.gif",   22, 0);
regSym("+R",  1, "_plr.gif",   23, 1);
regSym(".R",  1, "_cdr.gif",   14, 1);
regSym("<R",  1, "_ltr.gif",   20, 1);
regSym("<RR", 1, "_ltbbr.gif", 20, 1);
regSym("CC",  0, "bbc.gif",    12, 0);
regSym("RR",  0, "bbr.gif",    13, 0);
regSym("0",   0, "0.gif",      8, 0);
regSym("1",   0, "1.gif",      7, 0);
regSym("i",   0, "i.gif",      6, 0);
regSym("+",   1, "plus.gif",   13, 1);
regSym("-",   1, "minus.gif",  11, 1);
regSym("-u",  0, "shortminus.gif", 8, 0);
regSym("x.",  1, "cdot.gif",   4, 1);
regSym("+oo", 1, "_pinf.gif",  29, 0);
regSym("-oo", 1, "_minf.gif",  24, 0);
regSym("RR*", 0, "_bbrast.gif", 18, 0);
regSym("<",   1, "lt.gif",     11, 1);
regSym("<_",  1, "le.gif",     11, 1);
regSym("2",   0, "2.gif",      8, 0);
regSym("3",   0, "3.gif",      8, 0);
regSym("4",   0, "4.gif",      9, 0);
regSym("5",   0, "5.gif",      8, 0);
regSym("6",   0, "6.gif",      8, 0);
regSym("7",   0, "7.gif",      9, 0);
regSym("8",   0, "8.gif",      8, 0);
regSym("9",   0, "9.gif",      8, 0);
regSym("10",  0, "_10.gif",    14, 0);
regSym("NN",  0, "bbn.gif",    12, 0);
regSym("NN0", 0, "_bbn0.gif",  19, 0);
regSym("ZZ",  0, "bbz.gif",    11, 0);
regSym("QQ",  0, "bbq.gif",    13, 0);
regSym("RR+", 0, "_bbrplus.gif", 20, 0);
regSym("sqr", 0, "surd.gif",   14, 0);
regSym("Re",  0, "re.gif",     12, 0);
regSym("Im",  0, "im.gif",     12, 0);
regSym("*",   0, "ast.gif",    7, 0);
regSym("abs", 0, "_abs.gif",   22, 0);
regSym("|_",  0, "lfloor.gif", 6, 0);
regSym("seq1", 1, "_seq1.gif", 26, 1);
regSym("shift", 1, "_shift.gif", 30, 1);

/* 26-Dec-2006 nm These need images. */
/*
regSym("(,)" as "(,)";
regSym("(,]" as "(,]";
regSym("[,)" as "[,)";
regSym("[,]" as "[,]";
*/
regSym("ZZ>", 0, "_bbzge.gif", 20, 0);
regSym("limsup", 0, "_limsup.gif", 44, 0);
regSym("seq", 1, "_seq.gif",   22, 1);
regSym("seq0", 1, "_seq0.gif", 27, 1);
regSym("^",   0, "uparrow.gif", 7, 0);
regSym("!",   0, "bang.gif",   3, 0);
regSym("C.",  1, "rmcc.gif",   10, 1);
regSym("~~>", 1, "rightsquigarrow.gif", 15, 1);
regSym("...", 0, "ldots.gif",  18, 0);
regSym("sum_", 0, "csigma.gif", 11, 0);
regSym("exp", 0, "_exp.gif",   24, 0);
regSym("e",   0, "e.gif",      8, 0);
regSym("sin", 0, "_sin.gif",   19, 0);
regSym("pi",  0, "pi.gif",     10, 0);
regSym("cos", 0, "_cos.gif",   21, 0);
regSym("log", 0, "_log.gif",   20, 0);
regSym("-cn->", 0, "_cnmap.gif", 23, 0);

/* 12-Jul-2006 nm These need images. */
/*
regSym("Top" as "Top";
regSym("TopSp" as "TopSp";
regSym("Bases" as "Bases";
regSym("topGen" as "topGen";
regSym("int" as "int";
regSym("cls" as "cls";
regSym("Clsd" as "Clsd";
regSym("nei" as "nei";
regSym("limPt" as "limPt";
regSym("Cn" as " Cn ";
regSym("CnP" as " CnP ";
regSym("Haus" as "Haus";
regSym("Met" as "Met";
regSym("MetSp" as "MetSp";
regSym("ball" as " ball ";
regSym("Open" as "Open";
*/
regSym("~~>m", 0, "_squigm.gif", 25, 0);

/* 7-Sep-2006 nm These need images. */
regSym("/g", 1, "_divg.gif", 11, 1);
/*
regSym("Cau" as "Cau";
regSym("CMet" as "CMet";
regSym("Grp" as "Grp";
regSym("Id" as "Id";
regSym("inv" as "inv";
regSym("SubGrp" as "SubGrp";
regSym("SymGrp" as "SymGrp";
regSym("GrpHom" as " GrpHom ";
regSym("GrpIso" as " GrpIso ";
regSym("Abel" as "Abel";
regSym("Ring" as "Ring";
regSym("CVec" as "CVec";
regSym("NrmCVec" as "NrmCVec";
regSym("Base" as "Base";
*/

regSym("+v", 0, "_plv.gif", 19, 0);
regSym(".s", 0, "_cds.gif", 9, 0);
regSym("0v", 0, "_0v.gif", 14, 0);
regSym("-v", 0, "_mv.gif", 17, 0);
regSym(".i", 0, "_cdi.gif", 7, 0);
regSym("norm", 0, "_norm.gif", 32, 0);

/* 24-Apr-2007 nm These need images. */
/*
regSym("IndMet" as "IndMet";
regSym("SubSp" as "SubSp";
regSym("normOp" as "normOp";
regSym("LnOp" as " LnOp ";
regSym("BLnOp" as " BLnOp ";
regSym("0op", 1, "_0op.gif", 21, 1);
regSym("adj" as "adj";
regSym("HmOp" as "HmOp";
regSym("CPreHil" as "CPreHil";
regSym("CBan" as "CBan";
regSym("CHil" as "CHil";
regSym("Poset" as "Poset";
regSym("supw" as " sup<SUB>w</SUB, 1);
regSym("infw" as " inf<SUB>w</SUB, 1);
regSym("join" as " join ";
regSym("meet" as " meet ";
regSym("Lat" as "Lat";
*/