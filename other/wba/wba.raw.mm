$( wba.raw.mm 10-Oct-2021 $)
$( Used to create wba.mm with 'submit wba.raw.cmd' $)

$(
  10-Oct-2021 shorter statements for L14 lemmas thus L14 steps   \
  7-Oct-2021   L10 L11 L16 L17 L31 T2 L52 L53 L57 L58 L61 L63 T3
      could not be 'minimize'd to use a single eq<n>tr; I don't know why.
      So for now the final proofs in wba.mm are used.
  27-Sep-2021 changed proofs for L39 , 083ng_ , L47 , L55
      to use L36 (commutative law)
  26-Sep-2021 removed 160ng_
$)

$(

[The instructions below are now in a Metamath script called wba.raw.cmd,
which should be run to produce wba.mm.]

To expand the appropriate proofs starting from this file (wba.raw.mm)
to obtain the final wba.mm and create the web pages:

! Convert to a script by changing all "$" to newline
erase
read wba.raw.mm
p L1 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L2 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L3 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L4 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L5 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L6 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L7 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L8 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L9 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L10 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L11 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L12 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p T1$ exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L13 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L14 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L15 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L16 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L17 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L18 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L19 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L20 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L21 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L22 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L23 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L24 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L25 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L26 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L27 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L28 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L29 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L30 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L31 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L32 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L33 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L34 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L35 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L36 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L37 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L38 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L39 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L40 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L41 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L42 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L43 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L44 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L45 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L46 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p T2 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L47 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L48 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L49 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L50 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L51 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L52 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L53 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L54 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L55 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L56 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L57 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L58 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L59 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L60 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L61 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L62 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L63 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p L64 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p T3 $exp *ng*$min eq?*tr/m$min eq*tr$sa n/c$_exit_pa
p nksL1 $exp L01?$sa n/c$_ex
p nksL2 $exp L02?$sa n/c$_ex
p nksL3 $exp L03?$sa n/c$_ex
p nksL4 $exp L04?$sa n/c$_ex
p nksL5 $exp L05?$sa n/c$_ex
p nksL6 $exp L06?$sa n/c$_ex
p nksL7 $exp L07?$sa n/c$_ex
p nksL8 $exp L08?$sa n/c$_ex
p nksL9 $exp L09?$sa n/c$_ex
p nksL10 $exp L10?$sa n/c$_ex
p nksL11 $exp L11?$sa n/c$_ex
p nksL12 $exp L12?$sa n/c$_ex
p nksL13 $exp L13?$sa n/c$_ex
p nksL14 $exp L14?$sa n/c$_ex
p nksL15 $exp L15?$sa n/c$_ex
p nksL16 $exp L16?$sa n/c$_ex
p nksL17 $exp L17?$sa n/c$_ex
p nksL18 $exp L18?$sa n/c$_ex
p nksL19 $exp L19?$sa n/c$_ex
p nksL20 $exp L20?$sa n/c$_ex
p nksL21 $exp L21?$sa n/c$_ex
p nksL22 $exp L22?$sa n/c$_ex
p nksT1 $exp T01?$sa n/c$_ex
p nksL23 $exp L23?$sa n/c$_ex
p nksL24 $exp L24?$sa n/c$_ex
p nksL25 $exp L25?$sa n/c$_ex
p nksL26 $exp L26?$sa n/c$_ex
p nksL27 $exp L27?$sa n/c$_ex
p nksL28 $exp L28?$sa n/c$_ex
p nksL29 $exp L29?$sa n/c$_ex
p nksL30 $exp L30?$sa n/c$_ex
p nksL31 $exp L31?$sa n/c$_ex
p nksL32 $exp L32?$sa n/c$_ex
p nksL33 $exp L33?$sa n/c$_ex
p nksL34 $exp L34?$sa n/c$_ex
p nksL35 $exp L35?$sa n/c$_ex
p nksL36 $exp L36?$sa n/c$_ex
p nksL37 $exp L37?$sa n/c$_ex
p nksL38 $exp L38?$sa n/c$_ex
p nksL39 $exp L39?$sa n/c$_ex
p nksL40 $exp L40?$sa n/c$_ex
p nksL41 $exp L41?$sa n/c$_ex
p nksL42 $exp L42?$sa n/c$_ex
p nksL43 $exp L43?$sa n/c$_ex
p nksL44 $exp L44?$sa n/c$_ex
p nksL45 $exp L45?$sa n/c$_ex
p nksL46 $exp L46?$sa n/c$_ex
p nksL47 $exp L47?$sa n/c$_ex
p nksL48 $exp L48?$sa n/c$_ex
p nksL49 $exp L49?$sa n/c$_ex
p nksL50 $exp L50?$sa n/c$_ex
p nksL51 $exp L51?$sa n/c$_ex
p nksL52 $exp L52?$sa n/c$_ex
p nksL53 $exp L53?$sa n/c$_ex
p nksL54 $exp L54?$sa n/c$_ex
p nksL55 $exp L55?$sa n/c$_ex
p nksL56 $exp L56?$sa n/c$_ex
p nksT2 $exp T02?$sa n/c$_ex
p nksL57 $exp L57?$sa n/c$_ex
p nksL58 $exp L58?$sa n/c$_ex
p nksL59 $exp L59?$sa n/c$_ex
p nksL60 $exp L60?$sa n/c$_ex
p nksL61 $exp L61?$sa n/c$_ex
p nksL62 $exp L62?$sa n/c$_ex
p nksL63 $exp L63?$sa n/c$_ex
p nksL64 $exp L64?$sa n/c$_ex
p nksL65 $exp L65?$sa n/c$_ex
p nksL66 $exp L66?$sa n/c$_ex
p nksL67 $exp L67?$sa n/c$_ex
p nksL68 $exp L68?$sa n/c$_ex
p nksL69 $exp L69?$sa n/c$_ex
p nksL70 $exp L70?$sa n/c$_ex
p nksL71 $exp L71?$sa n/c$_ex
p nksL72 $exp L72?$sa n/c$_ex
p nksL73 $exp L73?$sa n/c$_ex
p nksL74 $exp L74?$sa n/c$_ex
p nksL75 $exp L75?$sa n/c$_ex
p nksL76 $exp L76?$sa n/c$_ex
p nksL77 $exp L77?$sa n/c$_ex
p nksL78 $exp L78?$sa n/c$_ex
p nksL79 $exp L79?$sa n/c$_ex
p nksL80 $exp L80?$sa n/c$_ex
p nksL81 $exp L81?$sa n/c$_ex
p nksT3 $exp T03?$sa n/c$_ex
save proof * /normal
save proof * /compressed/fast
write source wba.mm /extract weq,T1,T2,T3,nksT1,nksT2,nksT3
erase
read wba.mm
write theorem_list /alt /show
show statement * /alt

To change all $ to newline, if the above is in 1.tmp, you can use

MM> tools
TOOLS> substitute 1.tmp '$' '\n' all ''
TOOLS> exit

Then run the script:

MM> open log log.tmp
MM> submit 1.tmp /silent
MM> close log

To change copyright terms:

for i in nks*.html ax-A.html
do
  cp $i s.tmp
  sed -e 's/Public domain/Copyright (2002) by Stephen Wolfram/' \
      < s.tmp \
      > $i
done

$)

$(
###############################################################################
        SYNTAX AND AXIOMS
###############################################################################
$)


$(
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
           Equality axioms
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
$)

$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
              Basic syntax
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)

  $( Declare the primitive constant symbols. $)
  $c ( $.  $( Left parenthesis $)
  $c ) $.  $( Right parenthesis $)
  $c = $.
  $c wff $. $( Well-formed formula $)
  $c term $. $( Term $)
  $c |- $.

  $( Introduce variable names we will use for terms. $)
  $v a $.
  $v b $.
  $v c $.
  $v d $.
  $v e $.
  $v f $.
  $v g $.
  $v h $.
  $v j $.
  $v k $.
  $v l $.

  $v i $.
  $v m $.
  $v n $.
  $v p $.
  $v q $.
  $v r $.
  $v t $.
  $v u $.
  $v w $.
  $v x $.
  $v y $.
  $v z $.

  $( Let variable ` a ` be a term. $)
  wva $f term a $.
  $( Let variable ` b ` be a term. $)
  wvb $f term b $.
  $( Let variable ` c ` be a term. $)
  wvc $f term c $.
  $( Let variable ` d ` be a term. $)
  wvd $f term d $.
  $( Let variable ` e ` be a term. $)
  wve $f term e $.
  $( Let variable ` f ` be a term. $)
  wvf $f term f $.
  $( Let variable ` g ` be a term. $)
  wvg $f term g $.
  $( Let variable ` h ` be a term. $)
  wvh $f term h $.
  $( Let variable ` j ` be a term. $)
  wvj $f term j $.
  $( Let variable ` k ` be a term. $)
  wvk $f term k $.
  $( Let variable ` l ` be a term. $)
  wvl $f term l $.

  $( Let variable ` i ` be a term. $)
  wvi $f term i $.
  $( Let variable ` m ` be a term. $)
  wvm $f term m $.
  $( Let variable ` n ` be a term. $)
  wvn $f term n $.
  $( Let variable ` p ` be a term. $)
  wvp $f term p $.
  $( Let variable ` q ` be a term. $)
  wvq $f term q $.
  $( Let variable ` r ` be a term. $)
  wvr $f term r $.
  $( Let variable ` t ` be a term. $)
  wvt $f term t $.
  $( Let variable ` u ` be a term. $)
  wvu $f term u $.
  $( Let variable ` w ` be a term. $)
  wvw $f term w $.
  $( Let variable ` x ` be a term. $)
  wvx $f term x $.
  $( Let variable ` y ` be a term. $)
  wvy $f term y $.
  $( Let variable ` z ` be a term. $)
  wvz $f term z $.


  $(   (sample definition for future reference; unused now)
  df-b $a |- ( a == b ) =
           ( ( a ' ' v b ' ' ) ' v ( a ' v b ' ) ' ) $.
  $)

  $c | $.
  $( Sheffer stroke syntax contstructor: if ` a ` and ` b ` are terms, so is
     ` ( a | b ) ` . $)
  tshef $a term ( a | b ) $.

  $( If ` a ` and ` b ` are terms, ` a = b ` is a wff.  This is not needed by
     proofs, but is needed to expand syntax steps of axioms and definitions
     during HTML generation.  Remember to include it the '/extract' list in
     'write source'. $)
  weq $a wff a = b $.

$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
        Axioms for basic equality
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)


  ${
    axcm.1 $e |- a = b $.
    $( Inference rule for equality for an algebra (commutative law).
       (Contributed by NM, 26-May-2008.) $)
    ax-eqcom $a |- b = a $.
  $}

  ${
    axtr.1 $e |- a = b $.
    axtr.2 $e |- b = c $.
    $( Inference rule for equality for an algebra (transitive law).
       (Contributed by NM, 26-May-2008.) $)
    ax-eqtr $a |- a = c $.
  $}


$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
        Equality axioms for Sheffer stroke
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)

  ${
    s.1 $e |- a = b $.
    $( Inference rule for Sheffer stroke adding a term to the right in an
       equality.  (Contributed by NM, 29-Sep-2021.) $)
    ax-shefeq1 $a |- ( a | c ) = ( b | c ) $.

    $( Inference rule for Sheffer stroke adding a term to the left in an
       equality.  (Contributed by NM, 29-Sep-2021.) $)
    ax-shefeq2 $a |- ( c | a ) = ( c | b ) $.
  $}

$(
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
        Wolfram axiom for Boolean algebra
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
$)

  $( The Wolfram single axiom for Boolean algebra.  The primary goal of this
     database is to prove Sheffer's 3 axioms for BA from this axiom.  See
     theorems ~ T1 , ~ T2 , and ~ T3 .  (Contributed by SW, 14-May-2002.) $)
  ax-A $a   |- ( ( ( b | c ) | a ) | ( b | ( ( b | a ) | b ) ) ) = a $.

$(
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
           Helper theorems associated with equality
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
$)


  ${
    a1ii.1 $e |- a = b $.
    a1ii.2 $e |- c = d $.
    $( This is a technical inference to assist proof development.  It provides
       a temporary way to add an independent subproof to a proof under
       development, for later assignment to a normal proof step.  (Contributed
       by NM, 7-Feb-2006.) $)
    a1ii $p |- a = b $=
      (  ) E $.
  $}

  ${
    cm.1 $e |- a = b $.
    $( Commutative inference rule for an algebra.  Alias for ~ ax-eqcom .
       (Contributed by NM, 26-May-2008.) $)
    eqcom $p |- b = a $=
      ( ax-eqcom ) ABCD $.
  $}

  ${
    tr.1 $e |- a = b $.
    tr.2 $e |- b = c $.
    $( Transitive inference rule for equality.  Alias for ~ ax-eqtr .
       (Contributed by NM, 26-May-2008.) $)
    eqtr $p |- a = c $=
      ( ax-eqtr ) ABCDEF $.

    tr.3 $e |- c = d $.
    $( Transitive inference rule for equality from a chain of 3 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq3tr $p |- a = d $=
      ( eqtr ) ACDABCEFHGH $.

    tr.4 $e |- d = e $.
    $( Transitive inference rule for equality from a chain of 4 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq4tr $p |- a = e $=
      ( eq3tr eqtr ) ADEABCDFGHJIK $.

    tr.5 $e |- e = f $.
    $( Transitive inference rule for equality from a chain of 5 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq5tr $p |- a = f $=
      ( eq4tr eqtr ) AEFABCDEGHIJLKM $.

    tr.6 $e |- f = g $.
    $( Transitive inference rule for equality from a chain of 6 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq6tr $p |- a = g $=
      ( eq5tr eqtr ) AFGABCDEFHIJKLNMO $.

    tr.7 $e |- g = h $.
    $( Transitive inference rule for equality from a chain of 7 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq7tr $p |- a = h $=
      ( eq6tr eqtr ) AGHABCDEFGIJKLMNPOQ $.

    tr.8 $e |- h = i $.
    $( Transitive inference rule for equality from a chain of 8 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq8tr $p |- a = i $=
      ( eq7tr eqtr ) AHIABCDEFGHJKLMNOPRQS $.

    tr.9 $e |- i = j $.
    $( Transitive inference rule for equality from a chain of 9 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq9tr $p |- a = j $=
      ( eq8tr eqtr ) AJIABCDEFGHJKLMNOPQRTSUA $.

    tr.10 $e |- j = k $.
    $( Transitive inference rule for equality from a chain of 10 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq10tr $p |- a = k $=
      ( eq9tr eqtr ) AIJABCDEFGHIKLMNOPQRSTUBUAUC $.

    tr.11 $e |- k = l $.
    $( Transitive inference rule for equality from a chain of 11 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq11tr $p |- a = l $=
      ( eq10tr eqtr ) AJKABCDEFGHIJLMNOPQRSTUAUBUDUCUE $.

    tr.12 $e |- l = m $.
    $( Transitive inference rule for equality from a chain of 12 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq12tr $p |- a = m $=
      ( eq11tr eqtr ) AKMABCDEFGHIJKLNOPQRSTUAUBUCUDUFUEUG $.

    tr.13 $e |- m = n $.
    $( Transitive inference rule for equality from a chain of 13 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq13tr $p |- a = n $=
      ( eq12tr eqtr ) AMNABCDEFGHIJKLMOPQRSTUAUBUCUDUEUFUHUGUI $.

    tr.14 $e |- n = p $.
    $( Transitive inference rule for equality from a chain of 13 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq14tr $p |- a = p $=
      ( eq13tr eqtr ) ANOABCDEFGHIJKLMNPQRSTUAUBUCUDUEUFUGUHUJUIUK $.

    tr.15 $e |- p = q $.
    $( Transitive inference rule for equality from a chain of 13 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq15tr $p |- a = q $=
      ( eq14tr eqtr ) AOPABCDEFGHIJKLMNOQRSTUAUBUCUDUEUFUGUHUIUJULUKUM $.

    tr.16 $e |- q = r $.
    $( Transitive inference rule for equality from a chain of 13 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq16tr $p |- a = r $=
      ( eq15tr eqtr ) APQABCDEFGHIJKLMNOPRSTUAUBUCUDUEUFUGUHUIUJUKULUNUMUO $.

    tr.17 $e |- r = t $.
    $( Transitive inference rule for equality from a chain of 13 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq17tr $p |- a = t $=
      ( eq16tr eqtr ) AQRABCDEFGHIJKLMNOPQSTUAUBUCUDUEUFUGUHUIUJUKULUMUNUPUOUQ
      $.

    tr.18 $e |- t = u $.
    $( Transitive inference rule for equality from a chain of 13 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq18tr $p |- a = u $=
      ( eq17tr eqtr ) ARSABCDEFGHIJKLMNOPQRTUAUBUCUDUEUFUGUHUIUJUKULUMUNUOUPURU
      QUS $.

    tr.19 $e |- u = w $.
    $( Transitive inference rule for equality from a chain of 13 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq19tr $p |- a = w $=
      ( eq18tr eqtr ) ASTABCDEFGHIJKLMNOPQRSUAUBUCUDUEUFUGUHUIUJUKULUMUNUOUPUQU
      RUTUSVA $.

    tr.20 $e |- w = x $.
    $( Transitive inference rule for equality from a chain of 13 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq20tr $p |- a = x $=
      ( eq19tr eqtr ) ABUAUBBCDEFGHLJKMINOPQRSTUAUCUDUEUFUGUHUIUJUKULUMUNUOUPUQ
      URUSUTVAVBVC $.

    tr.21 $e |- x = y $.
    $( Transitive inference rule for equality from a chain of 13 hypotheses.
       (Contributed by NM, 27-Sep-2021.) $)
    eq21tr $p |- a = y $=
      ( eq20tr eqtr ) AUAUBABCDEFGHIJKLMNOPQRSTUAUCUDUEUFUGUHUIUJUKULUMUNUOUPUQ
      URUSUTVAVBVDVCVE $.
  $}

  ${
    shef.h $e |- a = b $.
    $( Embed an equality to the left of a Sheffer stroke operation.  Alias for
       ~ ax-shefeq1 .  (Contributed by NM, 1-Oct-2021.) $)
    shefeq1 $p |- ( a | c ) = ( b | c ) $=
      ( ax-shefeq1 ) ABCDE $.

    $( Embed an equality to the right of a Sheffer stroke operation.  Alias for
       ~ ax-shefeq2 .  (Contributed by NM, 1-Oct-2021.) $)
    shefeq2 $p |- ( c | a ) = ( c | b ) $=
      ( ax-shefeq2 ) ABCDE $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq11 $p |- ( ( a | c ) | d ) = ( ( b | c ) | d ) $=
      ( tshef shefeq1 ) ACFBCFDABCEGG $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq12 $p |- ( ( c | a ) | d ) = ( ( c | b ) | d ) $=
      ( tshef shefeq2 shefeq1 ) CAFCBFDABCEGH $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq21 $p |- ( d | ( a | c ) ) = ( d | ( b | c ) ) $=
      ( tshef shefeq1 shefeq2 ) ACFBCFDABCEGH $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq22 $p |- ( d | ( c | a ) ) = ( d | ( c | b ) ) $=
      ( tshef shefeq2 ) CAFCBFDABCEGG $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq111 $p |- ( ( ( a | c ) | d ) | e ) = ( ( ( b | c ) | d ) | e ) $=
      ( tshef shefeq1 ) ACGZDGBCGZDGEIJDABCFHHH $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 6-Oct-2021.) $)
    shefeq112 $p |- ( ( ( c | a ) | d ) | e ) = ( ( ( c | b ) | d ) | e ) $=
      ( tshef shefeq2 shefeq1 ) CAGZDGCBGZDGEJKDABCFHII $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq121 $p |- ( ( d | ( a | c ) ) | e ) = ( ( d | ( b | c ) ) | e ) $=
      ( tshef shefeq1 shefeq2 ) DACGZGDBCGZGEJKDABCFHIH $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq211 $p |- ( e | ( ( a | c ) | d ) ) = ( e | ( ( b | c ) | d ) ) $=
      ( tshef shefeq1 shefeq2 ) ACGZDGBCGZDGEJKDABCFHHI $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq212 $p |- ( e | ( ( c | a ) | d ) ) = ( e | ( ( c | b ) | d ) ) $=
      ( tshef shefeq2 shefeq1 ) CAGZDGCBGZDGEJKDABCFHIH $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq221 $p |- ( e | ( d | ( a | c ) ) ) = ( e | ( d | ( b | c ) ) ) $=
      ( tshef shefeq1 shefeq2 ) DACGZGDBCGZGEJKDABCFHII $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 6-Oct-2021.) $)
    shefeq222 $p |- ( e | ( d | ( c | a ) ) ) = ( e | ( d | ( c | b ) ) ) $=
      ( tshef shefeq2 ) DCAGZGDCBGZGEIJDABCFHHH $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 6-Oct-2021.) $)
    shefeq1112 $p |- ( ( ( ( c | a ) | d ) | e ) | f )
        = ( ( ( ( c | b ) | d ) | e ) | f ) $=
      ( tshef shefeq2 shefeq1 ) CAHZDHZEHCBHZDHZEHFLNEKMDABCGIJJJ $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq1211 $p |- ( ( e | ( ( a | c ) | d ) ) | f )
        = ( ( e | ( ( b | c ) | d ) ) | f ) $=
      ( tshef shefeq1 shefeq2 ) EACHZDHZHEBCHZDHZHFLNEKMDABCGIIJI $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 6-Oct-2021.) $)
    shefeq1221 $p |- ( ( e | ( d | ( a | c ) ) ) | f )
        = ( ( e | ( d | ( b | c ) ) ) | f ) $=
      ( tshef shefeq1 shefeq2 ) EDACHZHZHEDBCHZHZHFLNEKMDABCGIJJI $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 6-Oct-2021.) $)
    shefeq2112 $p |- ( f | ( ( ( c | a ) | d ) | e ) )
        = ( f | ( ( ( c | b ) | d ) | e ) ) $=
      ( tshef shefeq2 shefeq1 ) CAHZDHZEHCBHZDHZEHFLNEKMDABCGIJJI $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 5-Oct-2021.) $)
    shefeq2121 $p |- ( f | ( ( d | ( a | c ) ) | e ) )
        = ( f | ( ( d | ( b | c ) ) | e ) ) $=
      ( tshef shefeq1 shefeq2 ) DACHZHZEHDBCHZHZEHFLNEKMDABCGIJIJ $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 6-Oct-2021.) $)
    shefeq2211 $p |- ( f | ( e | ( ( a | c ) | d ) ) )
        = ( f | ( e | ( ( b | c ) | d ) ) ) $=
      ( tshef shefeq1 shefeq2 ) EACHZDHZHEBCHZDHZHFLNEKMDABCGIIJJ $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq2212 $p |- ( f | ( e | ( ( c | a ) | d ) ) )
        = ( f | ( e | ( ( c | b ) | d ) ) ) $=
      ( tshef shefeq2 shefeq1 ) ECAHZDHZHECBHZDHZHFLNEKMDABCGIJII $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 5-Oct-2021.) $)
    shefeq2221 $p |- ( f | ( e | ( d | ( a | c ) ) ) )
        = ( f | ( e | ( d | ( b | c ) ) ) ) $=
      ( tshef shefeq1 shefeq2 ) EDACHZHZHEDBCHZHZHFLNEKMDABCGIJJJ $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq2222 $p |- ( f | ( e | ( d | ( c | a ) ) ) )
        = ( f | ( e | ( d | ( c | b ) ) ) ) $=
      ( tshef shefeq2 ) EDCAHZHZHEDCBHZHZHFKMEJLDABCGIIII $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 5-Oct-2021.) $)
    shefeq21121 $p |- ( g | ( ( ( d | ( a | c ) ) | e ) | f ) )
        = ( g | ( ( ( d | ( b | c ) ) | e ) | f ) ) $=
      ( tshef shefeq1 shefeq2 ) DACIZIZEIZFIDBCIZIZEIZFIGNQFMPELODABCHJKJJK $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 5-Oct-2021.) $)
    shefeq21221 $p |- ( g | ( ( e | ( d | ( a | c ) ) ) | f ) )
        = ( g | ( ( e | ( d | ( b | c ) ) ) | f ) ) $=
      ( tshef shefeq1 shefeq2 ) EDACIZIZIZFIEDBCIZIZIZFIGNQFMPELODABCHJKKJK $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 5-Oct-2021.) $)
    shefeq22111 $p |- ( g | ( f | ( ( ( a | c ) | d ) | e ) ) )
        = ( g | ( f | ( ( ( b | c ) | d ) | e ) ) ) $=
      ( tshef shefeq1 shefeq2 ) FACIZDIZEIZIFBCIZDIZEIZIGNQFMPELODABCHJJJKK $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 6-Oct-2021.) $)
    shefeq22112 $p |- ( g | ( f | ( ( ( c | a ) | d ) | e ) ) )
        = ( g | ( f | ( ( ( c | b ) | d ) | e ) ) ) $=
      ( tshef shefeq2 shefeq1 ) FCAIZDIZEIZIFCBIZDIZEIZIGNQFMPELODABCHJKKJJ $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 5-Oct-2021.) $)
    shefeq22121 $p |- ( g | ( f | ( ( d | ( a | c ) ) | e ) ) )
        = ( g | ( f | ( ( d | ( b | c ) ) | e ) ) ) $=
      ( tshef shefeq1 shefeq2 ) FDACIZIZEIZIFDBCIZIZEIZIGNQFMPELODABCHJKJKK $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq22212 $p |- ( g | ( f | ( e | ( ( c | a ) | d ) ) ) )
        = ( g | ( f | ( e | ( ( c | b ) | d ) ) ) ) $=
      ( tshef shefeq2 shefeq1 ) FECAIZDIZIZIFECBIZDIZIZIGNQFMPELODABCHJKJJJ $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 5-Oct-2021.) $)
    shefeq221121 $p |- ( h | ( g | ( ( ( d | ( a | c ) ) | e ) | f ) ) )
        = ( h | ( g | ( ( ( d | ( b | c ) ) | e ) | f ) ) ) $=
      ( tshef shefeq1 shefeq2 ) GDACJZJZEJZFJZJGDBCJZJZEJZFJZJHPTGOSFNREMQDABCI
      KLKKLL $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq221221 $p |- ( h | ( g | ( ( e | ( d | ( a | c ) ) ) | f ) ) )
        = ( h | ( g | ( ( e | ( d | ( b | c ) ) ) | f ) ) ) $=
      ( tshef shefeq1 shefeq2 ) GEDACJZJZJZFJZJGEDBCJZJZJZFJZJHPTGOSFNREMQDABCIKLL
      KLL $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 6-Oct-2021.) $)
    shefeq222121 $p |- ( h | ( g | ( f | ( ( d | ( a | c ) ) | e ) ) ) )
        = ( h | ( g | ( f | ( ( d | ( b | c ) ) | e ) ) ) ) $=
      ( tshef shefeq1 shefeq2 ) GFDACJZJZEJZJZJGFDBCJZJZEJZJZJHPTGOSFNREMQDABCI
      KLKLLL $.
  $}

  ${
    shefeqeq.1 $e |- a = b $.
    shefeqeq.2 $e |- c = d $.
    $( Double equality inference for Sheffer stroke.  For determining NKS-style
       step count, both hypotheses should be the same axiom or lemma (possibly
       contained in a larger expression).  (Contributed by NM, 25-Aug-2021.) $)
    shefeqeq $p |- ( a | c ) = ( b | d ) $=
      ( tshef shefeq1 shefeq2 eqtr ) ACGBCGBDGABCEHCDBFIJ $.
  $}

  $( Identity law.  Note that it can be derived from ~ ax-A rather than being
     stated as a separate axiom.  It is used mainly to assist proof
     development.  (Contributed by NM, 24-Aug-2021.) $)
  id $p |- a = a $=
    ( tshef ax-A eqcom eqtr ) AAABABZAFBBZAGAAAACZDHE $.

$(
###############################################################################
        NEW DERIVATION OF THE SHEFFER BA AXIOMS FROM THE WOLFRAM AXIOM
###############################################################################
$)

$( Based mostly on:  http://www.cs.unm.edu/~veroff/BA/Sh-2m_123m.pf $)
$( See also www.cs.unm.edu/~veroff/BA/Sh-2m_123m.in
            www.cs.unm.edu/~veroff/BA/Sh-2m_123m.out
            www.cs.unm.edu/~veroff/BA/Sh-2m_123m.xml $)
$(
    Prover9 proof                      Metamath proof
[para(4(a,1),8(a,1,2,2,1))] means eqtr 8s shefeq2 s2 shefeq1 eqcom 4s  4s=ax-w
[para(939(a,1),2486(a,1,2,1,2))] means eqtr 2486s shefeq2 shefeq1 shefeq2 eqcom 939s
[para(1114(a,2),87(a,1,2,2,1))] eqtr 87s shefeq2 s2 shefeq1 1114s (omit cm)
[para(23225(a,2),20999(a,2,2))] eqtr shefeq2 eqcom 23225s 20999s
[para(1128(a,1),444(a,2,2,2,1))] eqtr shefeq2 s2 shefeq1 1128s 444s
[para(1769(a,1),2677(a,1,2)),flip(a)] means eqtr shefeq2 1769s eqcom 2677s
[para(224(a,2),169(a,1)),flip(a)] eqtr eqcom 224s 169s
[para(217(a,2),192(a,2,1)),flip(a)] eqtr eqcom 192ng shefeq1 217ng
$)


$( The suffix "ng" doesn't mean anything, just convenient to match $)

$( The criteria for breaking out a lemma is are the following.
   If a statement is used more than once, it is broken out as a lemma.
   If a statement's reference is nested (i.e. followed by shefeq1 or s2),
   the statement is broken out as a lemma.

These are statements that are embedded in shefeq1 or s2:

 L1 L4 L2 L3 L5 L7 L8 L9 L10 L11
 L14 L23 L15 L16 L17 L18 L19 L20 L21 L22
 L24 L25 L26 L27 L28 L29 L30 L31 L32 L39
 L33 L40 L34 L51 L36 L47 L38 L45 L48 L55
 L56 L43 L49 L44 L50 L46 L62 L52 L61 L59
 L53 L54 L57 L58 L60 L64

 These are statements that are used more than once:

 L2 L3 L4 L5 L6 L7 L8 L10 L11 L12
 L13 L14 L15 L21 L22 L25 L26 L27 L30 L31
 L32 L33 L34 L35 L36 L37 L38 L39 L40 L41
 L42 L44 L47 L48 L49 L50 L52 L54 L63

 Combining the two lists above, we get the statements whose proofs should
 not be expanded (i.e. they should become lemmas); also add theorem steps;

 L1 L4 L2 L3 L13 L5 L6 L7 L8 L9
 L10 L11 L14 L23 L15 L12 L16 L17 L18 L19
 L20 L21 L22 L24 L25 L26 L27 L28 L29 L30
 L31 L32 L39 L33 L40 L34 L51 L35 L36 L47
 L38 L45 L48 L41 L55 L42 L56 L43 L49 L44
 L37 L50 L46 L62 L52 L61 L59 L53 L54 L57
 L58 L60 L63 L64 T1 T2 T3


005ng_ -> L1
006ng_ -> L2
etc. (in 'show label *ng_' order)

These are the statements that should be expanded:

011ng_OLD 013ng_ 016ng_ 017ng_OLD 019ng_ 020ng_ 021ng_ 030ng_ 031ng_
032ng_ 033ng_ 034ng_ 035ng_ 037ng_ 038ng_ 049ng_ 053ng_ 055ng_ 056ng_
059ng_ 070ng_ 074ng_ 075ng_ 079ng_ 083ng_ 088ng_ 095ng_ 102ng_ 123ng_
124ng_ 125ng_ 127ng_ 136ng_ 146ng_ 148ng_ 151ng_ 169ng_ 170ng_ 180ng_
184ng_ 186ng_ 192ng_ 194ng_ 196ng_ 202ng_ 209ng_ 211ng_ 212ng_
213ng_ 215ng_ 221ng_ 222ng_ 224ng_ 225ng_

$)

$(
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
         Lemmas L1 through L12 towards proving first Sheffer axiom
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
$)

$( The suffix "ng" doesn't mean anything, just convenient to match $)

  $( Step 1 for lemma ~ L1 .  (Contributed by Norman Megill and Robert Veroff,
     1-Oct-2021.) $)
  005ngA $p |- ( ( a | b ) | ( ( ( c | d ) | a ) | ( ( ( ( c | d ) | a ) | b ) | ( ( c | d ) | a ) ) ) ) = ( ( ( ( ( c | d ) | a ) | ( c | ( ( c | a ) | c ) ) ) | b ) | ( ( ( c | d ) | a ) | ( ( ( ( c | d ) | a ) | b ) | ( ( c | d ) | a ) ) ) ) $=
     ( tshef ax-A eqcom shefeq11 ) ACDEAEZCCAECEEEZBIIBEIEEJAACDFGH $.
  $( Step 2 for lemma ~ L1 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  005ngB $p |- ( ( ( ( ( c | d ) | a ) | ( c | ( ( c | a ) | c ) ) ) | b ) | ( ( ( c | d ) | a ) | ( ( ( ( c | d ) | a ) | b ) | ( ( c | d ) | a ) ) ) ) = b $=
     ( tshef ax-A ) BCDEAECCAECEEF $.
$( Prover9 step 5={para(3(a,1),3(a,1,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L1 $p |- ( ( a | b ) | ( ( ( c | d ) | a ) | ( ( ( ( c | d ) | a ) | b ) | ( ( c | d ) | a ) ) ) ) = b $=
     ( tshef 005ngA 005ngB eqtr ) ABECDEAEZIBEIEEZEICCAECEEEBEJEBABCDFABCDGH $.
  $( Step 1 for lemma ~ L2 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  007ngA $p |- ( ( a | b ) | ( ( c | a ) | ( ( ( c | a ) | b ) | ( c | a ) ) ) ) = ( ( ( ( c | a ) | ( ( ( p | q ) | c ) | ( ( ( ( p | q ) | c ) | a ) | ( ( p | q ) | c ) ) ) ) | b ) | ( ( c | a ) | ( ( ( c | a ) | b ) | ( c | a ) ) ) ) $=
     ( tshef L1 eqcom shefeq11 ) ACAFZDEFCFZKAFKFFFZBJJBFJFFLACADEGHI $.
  $( Step 2 for lemma ~ L2 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  007ngB $p |- ( ( ( ( c | a ) | ( ( ( p | q ) | c ) | ( ( ( ( p | q ) | c ) | a ) | ( ( p | q ) | c ) ) ) ) | b ) | ( ( c | a ) | ( ( ( c | a ) | b ) | ( c | a ) ) ) ) = b $=
     ( tshef ax-A ) BCAFDEFCFZHAFHFFG $.
$( Prover9 step 7={para(5(a,1),3(a,1,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L2 $p |- ( ( a | b ) | ( ( c | a ) | ( ( ( c | a ) | b ) | ( c | a ) ) ) ) = b $=
     ( wvx wvy tshef 007ngA 007ngB eqtr ) ABFCAFZJBFJFFZFJDEFCFZLAFLFFFBFKFBABCDEG
     ABCDEHI $.
  $( Step 1 for lemma ~ L3 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  008ngA $p |- ( ( a | ( b | ( ( b | a ) | b ) ) ) | ( ( ( b | c ) | a ) | ( a | ( ( b | c ) | a ) ) ) ) = ( ( a | ( b | ( ( b | a ) | b ) ) ) | ( ( ( b | c ) | a ) | ( ( ( ( b | c ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | c ) | a ) ) ) ) $=
     ( tshef ax-A eqcom shefeq221 ) ABCDADZBBADBDDZDZHHAIDJAABCEFG $.
  $( Step 2 for lemma ~ L3 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  008ngB $p |- ( ( a | ( b | ( ( b | a ) | b ) ) ) | ( ( ( b | c ) | a ) | ( ( ( ( b | c ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | c ) | a ) ) ) ) = ( b | ( ( b | a ) | b ) ) $=
     ( tshef L2 ) ABBADBDDBCDE $.
$( Prover9 step 8={para(3(a,1),5(a,1,2,2,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L3 $p |- ( ( a | ( b | ( ( b | a ) | b ) ) ) | ( ( ( b | c ) | a ) | ( a | ( ( b | c ) | a ) ) ) ) = ( b | ( ( b | a ) | b ) ) $=
     ( tshef 008ngA 008ngB eqtr ) ABBADBDDZDZBCDADZAJDDDIJJHDJDDDHABCEABCFG $.
  $( Step 1 for lemma ~ L4 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  006ngA $p |- ( a | ( ( b | c ) | ( ( ( b | c ) | ( b | ( ( b | a ) | b ) ) ) | ( b | c ) ) ) ) = ( ( ( ( b | c ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | c ) | ( ( ( b | c ) | ( b | ( ( b | a ) | b ) ) ) | ( b | c ) ) ) ) $=
     ( tshef ax-A eqcom shefeq1 ) ABCDZADBBADBDDZDZHHIDHDDJAABCEFG $.
  $( Step 2 for lemma ~ L4 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  006ngB $p |- ( ( ( ( b | c ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | c ) | ( ( ( b | c ) | ( b | ( ( b | a ) | b ) ) ) | ( b | c ) ) ) ) = ( b | ( ( b | a ) | b ) ) $=
     ( tshef ax-A ) BBADBDDBCDAE $.
$( Prover9 step 6={para(3(a,1),3(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L4 $p |- ( a | ( ( b | c ) | ( ( ( b | c ) | ( b | ( ( b | a ) | b ) ) ) | ( b | c ) ) ) ) = ( b | ( ( b | a ) | b ) ) $=
     ( tshef 006ngA 006ngB eqtr ) ABCDZHBBADBDDZDHDDZDHADIDJDIABCEABCFG $.
  $( Step 1 for lemma ~ L5 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  010ngA $p |- ( ( ( a | ( ( a | b ) | a ) ) | c ) | ( b | ( ( b | c ) | b ) ) ) = ( ( ( b | ( ( a | p ) | ( ( ( a | p ) | ( a | ( ( a | b ) | a ) ) ) | ( a | p ) ) ) ) | c ) | ( b | ( ( b | c ) | b ) ) ) $=
     ( tshef L4 eqcom shefeq11 ) AABEAEEZBADEZJIEJEEEZCBBCEBEEKIBADFGH $.
  $( Step 2 for lemma ~ L5 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  010ngB $p |- ( ( ( b | ( ( a | p ) | ( ( ( a | p ) | ( a | ( ( a | b ) | a ) ) ) | ( a | p ) ) ) ) | c ) | ( b | ( ( b | c ) | b ) ) ) = c $=
     ( tshef ax-A ) CBADEZGAABEAEEEGEEF $.
$( Prover9 step 10={para(6(a,1),3(a,1,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L5 $p |- ( ( ( a | ( ( a | b ) | a ) ) | c ) | ( b | ( ( b | c ) | b ) ) ) = c $=
     ( wvx tshef 010ngA 010ngB eqtr ) AABEAEEZCEBBCEBEEZEBADEZKIEKEEECEJECABCDFABC
     DGH $.
  $( Step 1 for lemma ~ L6 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  012ngA $p |- ( a | ( ( b | ( ( b | c ) | b ) ) | ( ( ( b | ( ( b | c ) | b ) ) | ( c | ( ( c | a ) | c ) ) ) | ( b | ( ( b | c ) | b ) ) ) ) ) = ( ( ( ( b | ( ( b | c ) | b ) ) | a ) | ( c | ( ( c | a ) | c ) ) ) | ( ( b | ( ( b | c ) | b ) ) | ( ( ( b | ( ( b | c ) | b ) ) | ( c | ( ( c | a ) | c ) ) ) | ( b | ( ( b | c ) | b ) ) ) ) ) $=
     ( tshef L5 eqcom shefeq1 ) ABBCDBDDZADCCADCDDZDZHHIDHDDJABCAEFG $.
  $( Step 2 for lemma ~ L6 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  012ngB $p |- ( ( ( ( b | ( ( b | c ) | b ) ) | a ) | ( c | ( ( c | a ) | c ) ) ) | ( ( b | ( ( b | c ) | b ) ) | ( ( ( b | ( ( b | c ) | b ) ) | ( c | ( ( c | a ) | c ) ) ) | ( b | ( ( b | c ) | b ) ) ) ) ) = ( c | ( ( c | a ) | c ) ) $=
     ( tshef ax-A ) CCADCDDBBCDBDDAE $.
$( Prover9 step 12={para(10(a,1),3(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L6 $p |- ( a | ( ( b | ( ( b | c ) | b ) ) | ( ( ( b | ( ( b | c ) | b ) ) | ( c | ( ( c | a ) | c ) ) ) | ( b | ( ( b | c ) | b ) ) ) ) ) = ( c | ( ( c | a ) | c ) ) $=
     ( tshef 012ngA 012ngB eqtr ) ABBCDBDDZHCCADCDDZDHDDZDHADIDJDIABCEABCFG $.
  $( Step 1 for lemma ~ L7 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  014ngA $p |- ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) = ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) $=
     ( tshef ax-A eqcom shefeq2 ) AAABABZAFBZBZAGBHAAAACDE $.
  $( Step 2 for lemma ~ L7 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  014ngB $p |- ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) = ( a | ( ( a | a ) | a ) ) $=
     ( L3 ) AAAB $.
$( Prover9 step 14={para(3(a,1),8(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L7 $p |- ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) = ( a | ( ( a | a ) | a ) ) $=
     ( tshef 014ngA 014ngB eqtr ) AAAABABZBZBZABHFGBBGACADE $.
  $( Step 1 for lemma ~ L8 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  015ngA $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) = ( ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) $=
     ( tshef L7 eqcom shefeq1 ) AAABABBZAFBABZFGFACDE $.
  $( Step 2 for lemma ~ L8 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  015ngB $p |- ( ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) = a $=
     ( tshef ax-A ) AAAAABABBC $.
$( Prover9 step 15={para(14(a,1),3(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L8 $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) = a $=
     ( tshef 015ngA 015ngB eqtr ) AAABABBZFBAFBABFBAACADE $.
  $( Step 1 for lemma ~ L9 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  018ngA $p |- ( ( a | b ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | b ) | ( a | ( ( a | a ) | a ) ) ) ) ) = ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | b ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | b ) | ( a | ( ( a | a ) | a ) ) ) ) ) $=
     ( tshef L8 eqcom shefeq11 ) AAAACACCZGCZBGGBCGCCHAADEF $.
  $( Step 2 for lemma ~ L9 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  018ngB $p |- ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | b ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | b ) | ( a | ( ( a | a ) | a ) ) ) ) ) = b $=
     ( tshef ax-A ) BAAACACCZED $.
$( Prover9 step 18={para(15(a,1),3(a,1,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L9 $p |- ( ( a | b ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | b ) | ( a | ( ( a | a ) | a ) ) ) ) ) = b $=
     ( tshef 018ngA 018ngB eqtr ) ABCAAACACCZGBCGCCZCGGCBCHCBABDABEF $.
  $( Step 1 for lemma ~ 021ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  021ngA $p |- ( ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) | ( ( a | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) | ( a | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) ) ) ) = ( ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) | ( ( a | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( ( ( a | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) ) ) ) $=
     ( tshef L9 eqcom shefeq221 ) AAAABABBZBABZAGBZFFGBFBBBZHHGIGAGCDE $.
  $( Step 2 for lemma ~ 021ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  021ngB $p |- ( ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) | ( ( a | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( ( ( a | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) $=
     ( tshef L6 ) AAAABABBZBABADC $.
$( Prover9 step 21={para(18(a,1),12(a,1,2,2,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  021ng_ $p |- ( ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) | ( ( a | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) | ( a | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) $=
     ( tshef 021ngA 021ngB eqtr ) AAAABABBZBABZAGBZGHBBBGHHFFGBFBBZBHBBBIACADE $.
  $( Step 1 for lemma ~ 013ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  013ngA $p |- ( ( ( a | b ) | c ) | ( ( c | ( a | ( ( a | c ) | a ) ) ) | ( ( ( a | d ) | c ) | ( c | ( ( a | d ) | c ) ) ) ) ) = ( ( ( a | b ) | c ) | ( a | ( ( a | c ) | a ) ) ) $=
     ( tshef L3 shefeq2 ) CAACEAEEZEADECEZCIEEEHABECECADFG $.
  $( Step 2 for lemma ~ 013ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  013ngB $p |- ( ( ( a | b ) | c ) | ( a | ( ( a | c ) | a ) ) ) = c $=
     ( ax-A ) CABD $.
$( Prover9 step 13={para(8(a,2),3(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  013ng_ $p |- ( ( ( a | b ) | c ) | ( ( c | ( a | ( ( a | c ) | a ) ) ) | ( ( ( a | d ) | c ) | ( c | ( ( a | d ) | c ) ) ) ) ) = c $=
     ( tshef 013ngA 013ngB eqtr ) ABECEZCAACEAEEZEADECEZCKEEEEIJECABCDFABCGH $.
  $( Step 1 for lemma ~ 019ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  019ngA $p |- ( ( ( a | b ) | a ) | ( ( a | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( ( ( a | c ) | a ) | ( a | ( ( a | c ) | a ) ) ) ) ) = ( ( ( a | b ) | a ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( ( a | c ) | a ) | ( a | ( ( a | c ) | a ) ) ) ) ) $=
     ( tshef L7 shefeq212 ) AAAADADDZDADGAACDADZAHDDABDADAEF $.
  $( Step 2 for lemma ~ 019ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  019ngB $p |- ( ( ( a | b ) | a ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( ( a | c ) | a ) | ( a | ( ( a | c ) | a ) ) ) ) ) = a $=
     ( 013ng_ ) ABACD $.
$( Prover9 step 19={para(14(a,2),13(a,1,2,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  019ng_ $p |- ( ( ( a | b ) | a ) | ( ( a | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( ( ( a | c ) | a ) | ( a | ( ( a | c ) | a ) ) ) ) ) = a $=
     ( tshef 019ngA 019ngB eqtr ) ABDADZAAAAADADDDZADDACDADZAJDDZDDHIKDDAABCEABCFG
     $.
  $( Step 1 for lemma ~ L10 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  022ngA $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) = ( ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) | ( ( a | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) | ( a | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) ) ) ) $=
     ( tshef 021ng_ eqcom ) AAAABABBZBABZAFBZFGBBBEEFBEBBACD $.
  $( Step 2 for lemma ~ L10 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  022ngB $p |- ( ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) | ( ( a | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) | ( a | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) ) ) ) = a $=
     ( tshef 019ng_ ) AAAABABBZDC $.
$( Prover9 step 22={para(21(a,1),19(a,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L10 $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) = a $=
     ( tshef L6 eqcom L9 shefeq221 L7 shefeq212 L3 shefeq2 ax-A eq5tr ) AAABABBZMA
     MBZABZBMBBZOAOBZQPBZQBBBZOQOQBZBBONTBZBOMBASPOAMCDROQQOAOEFOMATOAGHUAMOAAM
     IJAAMKL $.
     $( ( tshef 022ngA 022ngB eqtr ) AAABABBZFAFBABZBFBBGAGBZGHBBBAACADE $. $)
  $( Step 1 for lemma ~ 016ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  016ngA $p |- ( a | ( ( a | b ) | ( ( ( a | b ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( a | b ) ) ) ) = ( a | ( ( a | b ) | ( ( ( a | b ) | ( a | ( ( a | a ) | a ) ) ) | ( a | b ) ) ) ) $=
     ( tshef L7 shefeq2212 ) AAAACACCZCACFABCZGGAADE $.
  $( Step 2 for lemma ~ 016ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  016ngB $p |- ( a | ( ( a | b ) | ( ( ( a | b ) | ( a | ( ( a | a ) | a ) ) ) | ( a | b ) ) ) ) = ( a | ( ( a | a ) | a ) ) $=
     ( L4 ) AABC $.
$( Prover9 step 16={para(14(a,2),6(a,1,2,2,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  016ng_ $p |- ( a | ( ( a | b ) | ( ( ( a | b ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( a | b ) ) ) ) = ( a | ( ( a | a ) | a ) ) $=
     ( tshef 016ngA 016ngB eqtr ) AABCZGAAAACACCZCACCGCCCAGGHCGCCCHABDABEF $.
  $( Step 1 for lemma ~ L11 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  023ngA $p |- ( a | ( ( a | a ) | a ) ) = ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) $=
     ( tshef 016ng_ eqcom ) AAAABABZBZFAFBABBFBBBFAECD $.
  $( Step 2 for lemma ~ L11 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  023ngB $p |- ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) = ( a | a ) $=
     ( tshef L10 shefeq2 ) AAABABBZEAEBABBEBBAAACD $.
$( Prover9 step 23={para(22(a,1),16(a,1,2)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L11 $p |- ( a | ( ( a | a ) | a ) ) = ( a | a ) $=
     ( tshef L4 eqcom L7 shefeq2212 L10 shefeq2 eq3tr ) AAABZABZBZALLLBLBBBZALLALB
     ABZBLBBZBZJMLAAKCDPMNLLLLAAEFDOAAAGHI $.
     $( ( tshef 023ngA 023ngB eqtr ) AAABZABBZAGGAGBABBGBBBFACADE $. $)
  $( Step 1 for lemma ~ L12 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  027ngA $p |- ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) $=
     ( tshef L11 eqcom shefeq1 ) AABZAFABBZGGFACDE $.
  $( Step 2 for lemma ~ L12 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  027ngB $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) = a $=
     ( L8 ) AB $.
$( Prover9 step 27={para(23(a,1),15(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L12 $p |- ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) = a $=
     ( tshef 027ngA 027ngB eqtr ) AABZAFABBZBGGBAACADE $.

$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
           First Sheffer axiom for BA
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)


  $( Step 1 for lemma ~ T1 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  028ngA $p |- ( ( a | a ) | ( a | a ) ) = ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) $=
     ( tshef L11 eqcom shefeq2 ) AABZAFABBZFGFACDE $.
  $( Step 2 for lemma ~ T1 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  028ngB $p |- ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) = a $=
     ( L12 ) AB $.


$( Prover9 step 28={para(23(a,1),27(a,1,2))}. $)
  $( First Sheffer axiom for a Boolean algebra.  (Contributed by NM and RV,
     1-Oct-2021.) $)
  T1 $p |- ( ( a | a ) | ( a | a ) ) = a $=
     ( tshef 028ngA 028ngB eqtr ) AABZFBFAFABBBAACADE $.


$(
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
         Lemmas L13 through L46 towards proving second Sheffer axiom
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
$)


  $( Step 1 for lemma ~ L13 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  009ngA $p |- ( a | ( b | ( ( b | ( ( c | b ) | ( ( ( c | b ) | a ) | ( c | b ) ) ) ) | b ) ) ) = ( ( ( b | a ) | ( ( c | b ) | ( ( ( c | b ) | a ) | ( c | b ) ) ) ) | ( b | ( ( b | ( ( c | b ) | ( ( ( c | b ) | a ) | ( c | b ) ) ) ) | b ) ) ) $=
     ( tshef L2 eqcom shefeq1 ) ABADCBDZHADHDDZDZBBIDBDDJABACEFG $.
  $( Step 2 for lemma ~ L13 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  009ngB $p |- ( ( ( b | a ) | ( ( c | b ) | ( ( ( c | b ) | a ) | ( c | b ) ) ) ) | ( b | ( ( b | ( ( c | b ) | ( ( ( c | b ) | a ) | ( c | b ) ) ) ) | b ) ) ) = ( ( c | b ) | ( ( ( c | b ) | a ) | ( c | b ) ) ) $=
     ( tshef ax-A ) CBDZFADFDDBAE $.
$( Prover9 step 9={para(7(a,1),3(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L13 $p |- ( a | ( b | ( ( b | ( ( c | b ) | ( ( ( c | b ) | a ) | ( c | b ) ) ) ) | b ) ) ) = ( ( c | b ) | ( ( ( c | b ) | a ) | ( c | b ) ) ) $=
     ( tshef 009ngA 009ngB eqtr ) ABBCBDZHADHDDZDBDDZDBADIDJDIABCEABCFG $.
  $( Step 1 for lemma ~ 011ng_OLD .  (Contributed by NM and RV, 1-Oct-2021.) $)
  011ngAOLD $p |- ( ( ( a | b ) | c ) | ( c | ( ( a | d ) | ( ( ( a | d ) | ( a | ( ( a | c ) | a ) ) ) | ( a | d ) ) ) ) ) = ( ( ( a | b ) | c ) | ( a | ( ( a | c ) | a ) ) ) $=
     ( tshef L4 shefeq2 ) CADEZHAACEAEEZEHEEEIABECECADFG $.
  $( Step 2 for lemma ~ 011ng_OLD .  (Contributed by NM and RV, 1-Oct-2021.) $)
  011ngBOLD $p |- ( ( ( a | b ) | c ) | ( a | ( ( a | c ) | a ) ) ) = c $=
     ( ax-A ) CABD $.
$( Prover9 step 11={para(6(a,2),3(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  011ng_OLD $p |- ( ( ( a | b ) | c ) | ( c | ( ( a | d ) | ( ( ( a | d ) | ( a | ( ( a | c ) | a ) ) ) | ( a | d ) ) ) ) ) = c $=
     ( tshef 011ngAOLD 011ngBOLD eqtr ) ABECEZCADEZJAACEAEEZEJEEEEIKECABCDFABCGH $.
  $( Step 1 for lemma ~ 017ng_OLD .  (Contributed by NM and RV, 1-Oct-2021.) $)
  017ngAOLD $p |- ( ( ( a | b ) | a ) | ( a | ( ( a | c ) | ( ( ( a | c ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( a | c ) ) ) ) ) = ( ( ( a | b ) | a ) | ( a | ( ( a | c ) | ( ( ( a | c ) | ( a | ( ( a | a ) | a ) ) ) | ( a | c ) ) ) ) ) $=
     ( tshef L7 shefeq22212 ) AAAADADDZDADGACDZHHAABDADAEF $.
  $( Step 2 for lemma ~ 017ng_OLD .  (Contributed by NM and RV, 1-Oct-2021.) $)
  017ngBOLD $p |- ( ( ( a | b ) | a ) | ( a | ( ( a | c ) | ( ( ( a | c ) | ( a | ( ( a | a ) | a ) ) ) | ( a | c ) ) ) ) ) = a $=
     ( 011ng_OLD ) ABACD $.
$( Prover9 step 17={para(14(a,2),11(a,1,2,2,2,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  017ng_OLD $p |- ( ( ( a | b ) | a ) | ( a | ( ( a | c ) | ( ( ( a | c ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( a | c ) ) ) ) ) = a $=
     ( tshef 017ngAOLD 017ngBOLD eqtr ) ABDADZAACDZIAAAADADDZDADDIDDDDHAIIJDIDDDDAABCEAB
     CFG $.

  $( Step 1 for lemma ~ L14 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  024ngAOLD $p |- ( ( ( a | b ) | a ) | ( a | a ) ) = ( ( ( a | b ) | a ) | ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
     ( tshef L10 eqcom shefeq22 ) AAAACACCZGAGCACCGCCZAABCACHAADEF $.
  $( Step 2 for lemma ~ L14 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  024ngBOLD $p |- ( ( ( a | b ) | a ) | ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) = a $=
     ( tshef 017ng_OLD ) ABAACACD $.

  $( Step 1 for lemma ~ L14 .  (Contributed by NM, 1-Oct-2021.) $)
  024ngA $p |- ( ( ( a | b ) | a ) | ( a | a ) ) = ( ( ( a | b ) | a ) | ( a | ( ( a | a ) | a ) ) ) $=
    ( tshef L11 eqcom shefeq2 ) AACZAGACCZABCACHGADEF $.
  $( Step 2 for lemma ~ L14 .  (Contributed by NM, 10-Oct-2021.) $)
  024ngB $p |- ( ( ( a | b ) | a ) | ( a | ( ( a | a ) | a ) ) ) = a $=
    ( ax-A ) AABC $.

$( Prover9 step 24={para(22(a,1),17(a,1,2,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM, 10-Oct-2021.) $)
  L14 $p |- ( ( ( a | b ) | a ) | ( a | a ) ) = a $=
    ( tshef 024ngA 024ngB eqtr ) ABCACZAACZCGAHACCCAABDABEF $.
  $( Step 1 for lemma ~ L15 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  026ngA $p |- ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | b ) ) = ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | ( ( b | b ) | b ) ) ) $=
     ( tshef L11 eqcom shefeq2 ) BBCZBGBCCZAABCACCBCHGBDEF $.
  $( Step 2 for lemma ~ L15 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  026ngB $p |- ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | ( ( b | b ) | b ) ) ) = b $=
     ( L5 ) ABBC $.
$( Prover9 step 26={para(23(a,1),10(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L15 $p |- ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | b ) ) = b $=
     ( tshef 026ngA 026ngB eqtr ) AABCACCBCZBBCZCGBHBCCCBABDABEF $.
  $( Step 1 for lemma ~ 030ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  030ngA $p |- ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | b ) ) | ( ( a | ( ( a | b ) | a ) ) | b ) ) ) = ( ( b | b ) | ( b | ( ( b | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | b ) ) | ( ( a | ( ( a | b ) | a ) ) | b ) ) ) ) | b ) ) ) $=
     ( tshef L13 eqcom ) BBCZBBAABCACCZBCZHFCHCCZCBCCCIFBGDE $.
  $( Step 2 for lemma ~ 030ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  030ngB $p |- ( ( b | b ) | ( b | ( ( b | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | b ) ) | ( ( a | ( ( a | b ) | a ) ) | b ) ) ) ) | b ) ) ) = ( ( b | b ) | ( b | ( ( b | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | ( ( a | ( ( a | b ) | a ) ) | b ) ) ) ) | b ) ) ) $=
     ( tshef L15 shefeq221221 ) AABCACCBCZBBCZCBFFBBBGABDE $.
$( Prover9 step 30={para(26(a,1),9(a,1,2,2,1,2,2,1)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  030ng_ $p |- ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | b ) ) | ( ( a | ( ( a | b ) | a ) ) | b ) ) ) = ( ( b | b ) | ( b | ( ( b | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | ( ( a | ( ( a | b ) | a ) ) | b ) ) ) ) | b ) ) ) $=
     ( tshef 030ngA 030ngB eqtr ) AABCACCBCZGBBCZCGCCZHBBICBCCCHBBGBGCCCBCCCABDABE
     F $.
  $( Step 1 for lemma ~ 020ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  020ngA $p |- ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) | ( ( ( a | ( ( a | b ) | a ) ) | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) | ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) | ( ( a | ( ( a | b ) | a ) ) | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) ) ) ) = ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) | ( ( ( a | ( ( a | b ) | a ) ) | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) | ( ( ( ( a | ( ( a | b ) | a ) ) | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) | ( b | ( ( b | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) | b ) ) ) | ( ( a | ( ( a | b ) | a ) ) | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) ) ) ) $=
     ( tshef L5 eqcom shefeq221 ) AABCACCZBCGCZGHCZBBHCBCCCZIIHJHABHDEF $.
  $( Step 2 for lemma ~ 020ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  020ngB $p |- ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) | ( ( ( a | ( ( a | b ) | a ) ) | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) | ( ( ( ( a | ( ( a | b ) | a ) ) | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) | ( b | ( ( b | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) | b ) ) ) | ( ( a | ( ( a | b ) | a ) ) | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) ) ) ) = ( b | ( ( b | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) | b ) ) $=
     ( tshef L6 ) AABCACCZBCECEBD $.
$( Prover9 step 20={para(10(a,1),12(a,1,2,2,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  020ng_ $p |- ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) | ( ( ( a | ( ( a | b ) | a ) ) | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) | ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) | ( ( a | ( ( a | b ) | a ) ) | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) ) ) ) = ( b | ( ( b | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) | b ) ) $=
     ( tshef 020ngA 020ngB eqtr ) AABCACCZBCGCZGHCZHICCCHIIBBHCBCCZCICCCJABDABEF
     $.
  $( Step 1 for lemma ~ 031ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  031ngA $p |- ( a | ( ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) | ( ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) ) ) ) = ( ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) | ( ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) ) ) ) $=
     ( tshef ax-A eqcom shefeq1 ) ABBACBCZCZACHCZHICZIJCCIAABGDEF $.
  $( Step 2 for lemma ~ 031ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  031ngB $p |- ( ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) | ( ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) ) ) ) = ( a | ( ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) | a ) ) $=
     ( 020ng_ ) BAC $.
$( Prover9 step 31={para(3(a,1),20(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  031ng_ $p |- ( a | ( ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) | ( ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) ) ) ) = ( a | ( ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) | a ) ) $=
     ( tshef 031ngA 031ngB eqtr ) ABBACBCCZGACGCZCZHICCZCHJCAAHCACCABDABEF $.
  $( Step 1 for lemma ~ 032ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  032ngA $p |- ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) ) ) ) = ( a | ( ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) | ( ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) ) ) ) $=
     ( tshef ax-A eqcom shefeq212 ) ABBACBCZCZACHCZHIHICCAIAABGDEF $.
  $( Step 2 for lemma ~ 032ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  032ngB $p |- ( a | ( ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) | ( ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) ) ) ) = ( a | ( ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) | a ) ) $=
     ( 031ng_ ) ABC $.
$( Prover9 step 32={para(3(a,1),31(a,1,2,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  032ng_ $p |- ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) ) ) ) = ( a | ( ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) | a ) ) $=
     ( tshef 032ngA 032ngB eqtr ) ABBACBCCZACZHGCZGICZCZCCAJKCCAAICACCABDABEF $.
  $( Step 1 for lemma ~ 033ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  033ngA $p |- ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( a | ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) ) ) ) = ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) ) ) ) $=
     ( tshef ax-A eqcom shefeq221 ) ABBACBCZCZACZHCZHJCIAJAABGDEF $.
  $( Step 2 for lemma ~ 033ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  033ngB $p |- ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) ) ) ) = ( a | ( ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) | a ) ) $=
     ( 032ng_ ) ABC $.
$( Prover9 step 33={para(3(a,1),32(a,1,2,2,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  033ng_ $p |- ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( a | ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) ) ) ) = ( a | ( ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) | a ) ) $=
     ( tshef 033ngA 033ngB eqtr ) ABBACBCCZACZAGHGCZCZCCCAHIJCCCAAICACCABDABEF $.
  $( Step 1 for lemma ~ 034ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  034ngA $p |- ( a | ( ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) | a ) ) = ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( a | ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) ) ) ) $=
     ( tshef 033ng_ eqcom ) ABBACBCCZACZAFGFCZCCCCAAHCACCABDE $.
  $( Step 2 for lemma ~ 034ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  034ngB $p |- ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( a | ( ( b | ( ( b | a ) | b ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) ) ) ) = ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( a | ( ( b | ( ( b | a ) | b ) ) | a ) ) ) ) $=
     ( tshef ax-A shefeq2222 ) BBACBCZCZACZGCAGAHAABFDE $.
$( Prover9 step 34={para(3(a,1),33(a,1,2,2,2,2)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  034ng_ $p |- ( a | ( ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) | a ) ) = ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( a | ( ( b | ( ( b | a ) | b ) ) | a ) ) ) ) $=
     ( tshef 034ngA 034ngB eqtr ) AABBACBCCZACZGCZCACCAHAGICCCCAHAHCCCABDABEF $.
  $( Step 1 for lemma ~ 035ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  035ngA $p |- ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( a | ( ( b | ( ( b | a ) | b ) ) | a ) ) ) ) = ( a | ( ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) | a ) ) $=
     ( tshef 034ng_ eqcom ) AABBACBCCZACZFCCACCAGAGCCCABDE $.
  $( Step 2 for lemma ~ 035ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  035ngB $p |- ( a | ( ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( b | ( ( b | a ) | b ) ) ) ) | a ) ) = ( a | ( ( a | a ) | a ) ) $=
     ( tshef ax-A shefeq212 ) BBACBCZCZACGCAAAAABFDE $.
$( Prover9 step 35={para(3(a,1),34(a,1,2,1,2)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  035ng_ $p |- ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( a | ( ( b | ( ( b | a ) | b ) ) | a ) ) ) ) = ( a | ( ( a | a ) | a ) ) $=
     ( tshef 035ngA 035ngB eqtr ) ABBACBCCZACZAHCCCAAHGCCACCAAACACCABDABEF $.
  $( Step 1 for lemma ~ L16 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  036ngA $p |- ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( a | ( ( b | ( ( b | a ) | b ) ) | a ) ) ) ) = ( a | ( ( a | a ) | a ) ) $=
     ( 035ng_ ) ABC $.
  $( Step 2 for lemma ~ L16 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  036ngB $p |- ( a | ( ( a | a ) | a ) ) = ( a | a ) $=
     ( L11 ) AB $.
$( Prover9 step 36={para(35(a,2),23(a,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L16 $p |- ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( a | ( ( b | ( ( b | a ) | b ) ) | a ) ) ) ) = ( a | a ) $=
     ( tshef ax-A eqcom shefeq2222 shefeq221 shefeq212 shefeq1 L5 L6 L11 eq8tr ) A
     BBACBCZCZACZAPCCCAPAOPOCZCZCCCAPQRCZCCARSCZCQTCQRRAAQCACCZCZRCCCUAAAACZACC
     UCAQOAPAQAABNDZEZFAQRPAUEGAQOSAUEHAQTUEIQUBRRQUBQBAQJEGQOAKQAAAAUDHALM $.
     $( ( tshef 036ngA 036ngB eqtr ) ABBACBCCACZAGCCCAAACZACCHABDAEF $. $)
  $( Step 1 for lemma ~ 037ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  037ngA $p |- ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | b ) ) | ( ( a | ( ( a | b ) | a ) ) | b ) ) ) = ( ( b | b ) | ( b | ( ( b | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | ( ( a | ( ( a | b ) | a ) ) | b ) ) ) ) | b ) ) ) $=
     ( 030ng_ ) ABC $.
  $( Step 2 for lemma ~ 037ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  037ngB $p |- ( ( b | b ) | ( b | ( ( b | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | ( ( a | ( ( a | b ) | a ) ) | b ) ) ) ) | b ) ) ) = ( ( b | b ) | ( b | ( ( b | b ) | b ) ) ) $=
     ( tshef L16 shefeq221 ) BAABCACCBCZBFCCCBBCZBBGBADE $.
$( Prover9 step 37={para(36(a,1),30(a,2,2,2,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  037ng_ $p |- ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | b ) ) | ( ( a | ( ( a | b ) | a ) ) | b ) ) ) = ( ( b | b ) | ( b | ( ( b | b ) | b ) ) ) $=
     ( tshef 037ngA 037ngB eqtr ) AABCACCBCZGBBCZCGCCHBBGBGCCCBCCCHBHBCCCABDABEF
     $.
  $( Step 1 for lemma ~ 038ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  038ngA $p |- ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | b ) ) | ( ( a | ( ( a | b ) | a ) ) | b ) ) ) = ( ( b | b ) | ( b | ( ( b | b ) | b ) ) ) $=
     ( 037ng_ ) ABC $.
  $( Step 2 for lemma ~ 038ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  038ngB $p |- ( ( b | b ) | ( b | ( ( b | b ) | b ) ) ) = b $=
     ( L12 ) AB $.
$( Prover9 step 38={para(37(a,2),27(a,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  038ng_ $p |- ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | b ) ) | ( ( a | ( ( a | b ) | a ) ) | b ) ) ) = b $=
     ( tshef 038ngA 038ngB eqtr ) AABCACCBCZGBBCZCGCCHBHBCCCBABDBEF $.
  $( Step 1 for lemma ~ L17 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  040ngA $p |- ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | ( ( a | ( ( a | b ) | a ) ) | b ) ) ) = ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | b ) ) | ( ( a | ( ( a | b ) | a ) ) | b ) ) ) $=
     ( tshef L15 eqcom shefeq21 ) BAABCACCBCZBBCCZGGHBABDEF $.
  $( Step 2 for lemma ~ L17 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  040ngB $p |- ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | b ) ) | ( ( a | ( ( a | b ) | a ) ) | b ) ) ) = b $=
     ( 038ng_ ) ABC $.
$( Prover9 step 40={para(26(a,1),38(a,1,2,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L17 $p |- ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | ( ( a | ( ( a | b ) | a ) ) | b ) ) ) = b $=
     ( tshef L15 eqcom shefeq21 L13 shefeq221221 L16 shefeq221 L12 eq5tr ) AABCACC
     ZBCZBNCCZNNBBCZCZNCCZPBBRCBCCCZPBBOCZBCCCPBPBCCCBBQNNQBABDZEFSRPBMGEQBNNBB
     BPUAHTPBBPBAIJBKL $.
     $( ( tshef 040ngA 040ngB eqtr ) AABCACCBCZBGCCGGBBCCGCCBABDABEF $. $)
  $( Step 1 for lemma ~ L18 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  041ngA $p |- ( ( a | ( b | ( ( b | a ) | b ) ) ) | a ) = ( ( a | ( b | ( ( b | a ) | b ) ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( a | ( ( b | ( ( b | a ) | b ) ) | a ) ) ) ) $=
     ( tshef L17 eqcom shefeq2 ) ABBACBCCZACZAHCCZAGCIABADEF $.
  $( Step 2 for lemma ~ L18 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  041ngB $p |- ( ( a | ( b | ( ( b | a ) | b ) ) ) | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( a | ( ( b | ( ( b | a ) | b ) ) | a ) ) ) ) = ( b | ( ( b | a ) | b ) ) $=
     ( tshef L3 ) ABBACBCD $.
$( Prover9 step 41={para(40(a,1),8(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L18 $p |- ( ( a | ( b | ( ( b | a ) | b ) ) ) | a ) = ( b | ( ( b | a ) | b ) ) $=
     ( tshef 041ngA 041ngB eqtr ) ABBACBCCZCZACHGACZAICCCGABDABEF $.
  $( Step 1 for lemma ~ L19 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  046ngA $p |- ( ( a | ( ( a | b ) | a ) ) | ( b | b ) ) = ( ( ( b | ( a | ( ( a | b ) | a ) ) ) | b ) | ( b | b ) ) $=
     ( tshef L18 eqcom shefeq1 ) AABCACCZBGCBCZBBCHGBADEF $.
  $( Step 2 for lemma ~ L19 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  046ngB $p |- ( ( ( b | ( a | ( ( a | b ) | a ) ) ) | b ) | ( b | b ) ) = b $=
     ( tshef L14 ) BAABCACCD $.
$( Prover9 step 46={para(41(a,1),24(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L19 $p |- ( ( a | ( ( a | b ) | a ) ) | ( b | b ) ) = b $=
     ( tshef 046ngA 046ngB eqtr ) AABCACCZBBCZCBGCBCHCBABDABEF $.
  $( Step 1 for lemma ~ L20 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  048ngA $p |- ( a | ( b | ( ( b | ( a | a ) ) | b ) ) ) = ( ( ( b | ( ( b | a ) | b ) ) | ( a | a ) ) | ( b | ( ( b | ( a | a ) ) | b ) ) ) $=
     ( tshef L19 eqcom shefeq1 ) ABBACBCCAACZCZBBGCBCCHABADEF $.
  $( Step 2 for lemma ~ L20 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  048ngB $p |- ( ( ( b | ( ( b | a ) | b ) ) | ( a | a ) ) | ( b | ( ( b | ( a | a ) ) | b ) ) ) = ( a | a ) $=
     ( tshef ax-A ) AACBBACBCD $.
$( Prover9 step 48={para(46(a,1),3(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L20 $p |- ( a | ( b | ( ( b | ( a | a ) ) | b ) ) ) = ( a | a ) $=
     ( tshef 048ngA 048ngB eqtr ) ABBAACZCBCCZCBBACBCCGCHCGABDABEF $.
  $( Step 1 for lemma ~ 049ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  049ngA $p |- ( ( a | b ) | ( ( ( a | b ) | ( b | b ) ) | ( a | b ) ) ) = ( ( b | b ) | ( b | ( ( b | ( ( a | b ) | ( ( ( a | b ) | ( b | b ) ) | ( a | b ) ) ) ) | b ) ) ) $=
     ( tshef L13 eqcom ) BBCZBBABCZGFCGCCZCBCCCHFBADE $.
  $( Step 2 for lemma ~ 049ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  049ngB $p |- ( ( b | b ) | ( b | ( ( b | ( ( a | b ) | ( ( ( a | b ) | ( b | b ) ) | ( a | b ) ) ) ) | b ) ) ) = ( ( b | b ) | ( b | ( ( b | b ) | b ) ) ) $=
     ( tshef L20 shefeq221 ) BABCZFBBCZCFCCCGBBGBFDE $.
$( Prover9 step 49={para(48(a,1),9(a,1,2,2,1)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  049ng_ $p |- ( ( a | b ) | ( ( ( a | b ) | ( b | b ) ) | ( a | b ) ) ) = ( ( b | b ) | ( b | ( ( b | b ) | b ) ) ) $=
     ( tshef 049ngA 049ngB eqtr ) ABCZGBBCZCGCCZHBBICBCCCHBHBCCCABDABEF $.
  $( Step 1 for lemma ~ L21 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  050ngA $p |- ( ( a | b ) | ( ( ( a | b ) | ( b | b ) ) | ( a | b ) ) ) = ( ( b | b ) | ( b | ( ( b | b ) | b ) ) ) $=
     ( 049ng_ ) ABC $.
  $( Step 2 for lemma ~ L21 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  050ngB $p |- ( ( b | b ) | ( b | ( ( b | b ) | b ) ) ) = b $=
     ( L12 ) AB $.
$( Prover9 step 50={para(49(a,2),27(a,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L21 $p |- ( ( a | b ) | ( ( ( a | b ) | ( b | b ) ) | ( a | b ) ) ) = b $=
     ( tshef 050ngA 050ngB eqtr ) ABCZGBBCZCGCCHBHBCCCBABDBEF $.
  $( Step 1 for lemma ~ L22 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  052ngA $p |- ( ( ( a | b ) | a ) | ( a | ( ( a | b ) | a ) ) ) = ( ( ( a | b ) | a ) | ( ( ( ( a | b ) | a ) | ( a | a ) ) | ( ( a | b ) | a ) ) ) $=
     ( tshef L14 eqcom shefeq21 ) AABCACZAACCZGGHAABDEF $.
  $( Step 2 for lemma ~ L22 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  052ngB $p |- ( ( ( a | b ) | a ) | ( ( ( ( a | b ) | a ) | ( a | a ) ) | ( ( a | b ) | a ) ) ) = a $=
     ( tshef L21 ) ABCAD $.
$( Prover9 step 52={para(24(a,1),50(a,1,2,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L22 $p |- ( ( ( a | b ) | a ) | ( a | ( ( a | b ) | a ) ) ) = a $=
     ( tshef 052ngA 052ngB eqtr ) ABCACZAGCCGGAACCGCCAABDABEF $.
  $( Step 1 for lemma ~ L23 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  025ngA $p |- ( ( a | ( b | a ) ) | ( ( b | a ) | ( b | a ) ) ) = ( ( a | ( b | a ) ) | ( ( b | a ) | ( ( ( b | a ) | ( b | a ) ) | ( b | a ) ) ) ) $=
     ( tshef L11 eqcom shefeq2 ) BACZGCZGHGCCZAGCIHGDEF $.
  $( Step 2 for lemma ~ L23 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  025ngB $p |- ( ( a | ( b | a ) ) | ( ( b | a ) | ( ( ( b | a ) | ( b | a ) ) | ( b | a ) ) ) ) = ( b | a ) $=
     ( tshef L2 ) ABACBD $.
$( Prover9 step 25={para(23(a,1),7(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L23 $p |- ( ( a | ( b | a ) ) | ( ( b | a ) | ( b | a ) ) ) = ( b | a ) $=
     ( tshef 025ngA 025ngB eqtr ) ABACZCZGGCZCHGIGCCCGABDABEF $.
  $( Step 1 for lemma ~ 053ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  053ngA $p |- ( ( a | ( b | a ) ) | ( ( b | a ) | ( a | ( b | a ) ) ) ) = ( ( a | ( b | a ) ) | ( ( ( a | ( b | a ) ) | ( ( b | a ) | ( b | a ) ) ) | ( a | ( b | a ) ) ) ) $=
     ( tshef L23 eqcom shefeq21 ) BACZAGCZGGCCZHHIGABDEF $.
  $( Step 2 for lemma ~ 053ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  053ngB $p |- ( ( a | ( b | a ) ) | ( ( ( a | ( b | a ) ) | ( ( b | a ) | ( b | a ) ) ) | ( a | ( b | a ) ) ) ) = ( b | a ) $=
     ( tshef L21 ) ABACD $.
$( Prover9 step 53={para(25(a,1),50(a,1,2,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  053ng_ $p |- ( ( a | ( b | a ) ) | ( ( b | a ) | ( a | ( b | a ) ) ) ) = ( b | a ) $=
     ( tshef 053ngA 053ngB eqtr ) ABACZCZGHCCHHGGCCHCCGABDABEF $.
  $( Step 1 for lemma ~ L24 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  054ngA $p |- ( ( a | ( ( a | b ) | a ) ) | a ) = ( ( a | ( ( a | b ) | a ) ) | ( ( ( a | b ) | a ) | ( a | ( ( a | b ) | a ) ) ) ) $=
     ( tshef L22 eqcom shefeq2 ) AABCACZAGCZCZHIAABDEF $.
  $( Step 2 for lemma ~ L24 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  054ngB $p |- ( ( a | ( ( a | b ) | a ) ) | ( ( ( a | b ) | a ) | ( a | ( ( a | b ) | a ) ) ) ) = ( ( a | b ) | a ) $=
     ( tshef 053ng_ ) AABCD $.
$( Prover9 step 54={para(52(a,1),53(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L24 $p |- ( ( a | ( ( a | b ) | a ) ) | a ) = ( ( a | b ) | a ) $=
     ( tshef 054ngA 054ngB eqtr ) AABCACZCZACHGHCCGABDABEF $.
  $( Step 1 for lemma ~ 055ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  055ngA $p |- ( ( ( a | ( ( a | b ) | a ) ) | a ) | ( a | ( ( a | b ) | a ) ) ) = ( ( ( a | ( ( a | b ) | a ) ) | a ) | ( a | ( ( a | ( ( a | b ) | a ) ) | a ) ) ) $=
     ( tshef L24 eqcom shefeq22 ) ABCACZAGCACZAHHGABDEF $.
  $( Step 2 for lemma ~ 055ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  055ngB $p |- ( ( ( a | ( ( a | b ) | a ) ) | a ) | ( a | ( ( a | ( ( a | b ) | a ) ) | a ) ) ) = a $=
     ( tshef L22 ) AABCACD $.
$( Prover9 step 55={para(54(a,1),52(a,1,2,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  055ng_ $p |- ( ( ( a | ( ( a | b ) | a ) ) | a ) | ( a | ( ( a | b ) | a ) ) ) = a $=
     ( tshef 055ngA 055ngB eqtr ) AABCACCZACZGCHAHCCAABDABEF $.
  $( Step 1 for lemma ~ 056ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  056ngA $p |- ( ( a | ( b | a ) ) | ( ( b | a ) | ( ( ( b | a ) | ( a | a ) ) | ( b | a ) ) ) ) = ( ( ( ( b | a ) | ( ( ( b | a ) | ( a | a ) ) | ( b | a ) ) ) | ( b | a ) ) | ( ( b | a ) | ( ( ( b | a ) | ( a | a ) ) | ( b | a ) ) ) ) $=
     ( tshef L21 eqcom shefeq11 ) ABACZGAACCGCCZGHHABADEF $.
  $( Step 2 for lemma ~ 056ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  056ngB $p |- ( ( ( ( b | a ) | ( ( ( b | a ) | ( a | a ) ) | ( b | a ) ) ) | ( b | a ) ) | ( ( b | a ) | ( ( ( b | a ) | ( a | a ) ) | ( b | a ) ) ) ) = ( b | a ) $=
     ( tshef 055ng_ ) BACAACD $.
$( Prover9 step 56={para(50(a,1),55(a,1,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  056ng_ $p |- ( ( a | ( b | a ) ) | ( ( b | a ) | ( ( ( b | a ) | ( a | a ) ) | ( b | a ) ) ) ) = ( b | a ) $=
     ( tshef 056ngA 056ngB eqtr ) ABACZCGGAACCGCCZCHGCHCGABDABEF $.
  $( Step 1 for lemma ~ L25 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  057ngA $p |- ( ( a | ( b | a ) ) | a ) = ( ( a | ( b | a ) ) | ( ( b | a ) | ( ( ( b | a ) | ( a | a ) ) | ( b | a ) ) ) ) $=
     ( tshef L21 eqcom shefeq2 ) ABACZGAACCGCCZAGCHABADEF $.
  $( Step 2 for lemma ~ L25 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  057ngB $p |- ( ( a | ( b | a ) ) | ( ( b | a ) | ( ( ( b | a ) | ( a | a ) ) | ( b | a ) ) ) ) = ( b | a ) $=
     ( 056ng_ ) ABC $.
$( Prover9 step 57={para(50(a,1),56(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L25 $p |- ( ( a | ( b | a ) ) | a ) = ( b | a ) $=
     ( tshef 057ngA 057ngB eqtr ) ABACZCZACHGGAACCGCCCGABDABEF $.
  $( Step 1 for lemma ~ L26 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  060ngA $p |- ( ( a | b ) | ( b | b ) ) = ( ( ( b | ( a | b ) ) | b ) | ( b | b ) ) $=
     ( tshef L25 eqcom shefeq1 ) ABCZBGCBCZBBCHGBADEF $.
  $( Step 2 for lemma ~ L26 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  060ngB $p |- ( ( ( b | ( a | b ) ) | b ) | ( b | b ) ) = b $=
     ( tshef L14 ) BABCD $.
$( Prover9 step 60={para(57(a,1),24(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L26 $p |- ( ( a | b ) | ( b | b ) ) = b $=
     ( tshef 060ngA 060ngB eqtr ) ABCZBBCZCBGCBCHCBABDABEF $.
  $( Step 1 for lemma ~ L27 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  064ngA $p |- ( ( a | b ) | ( b | ( a | b ) ) ) = ( ( a | b ) | ( ( ( a | b ) | ( b | b ) ) | ( a | b ) ) ) $=
     ( tshef L26 eqcom shefeq21 ) BABCZBBCCZGGHBABDEF $.
  $( Step 2 for lemma ~ L27 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  064ngB $p |- ( ( a | b ) | ( ( ( a | b ) | ( b | b ) ) | ( a | b ) ) ) = b $=
     ( L21 ) ABC $.
$( Prover9 step 64={para(60(a,1),50(a,1,2,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L27 $p |- ( ( a | b ) | ( b | ( a | b ) ) ) = b $=
     ( tshef 064ngA 064ngB eqtr ) ABCZBGCCGGBBCCGCCBABDABEF $.
  $( Step 1 for lemma ~ 059ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  059ngA $p |- ( ( a | ( b | ( c | a ) ) ) | ( ( c | a ) | ( b | ( c | a ) ) ) ) = ( ( a | ( b | ( c | a ) ) ) | ( ( c | a ) | ( ( ( c | a ) | ( b | ( c | a ) ) ) | ( c | a ) ) ) ) $=
     ( tshef L25 eqcom shefeq22 ) BCADZDZHIDHDZHAIDJIHBEFG $.
  $( Step 2 for lemma ~ 059ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  059ngB $p |- ( ( a | ( b | ( c | a ) ) ) | ( ( c | a ) | ( ( ( c | a ) | ( b | ( c | a ) ) ) | ( c | a ) ) ) ) = ( b | ( c | a ) ) $=
     ( tshef L2 ) ABCADDCE $.
$( Prover9 step 59={para(57(a,1),7(a,1,2,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  059ng_ $p |- ( ( a | ( b | ( c | a ) ) ) | ( ( c | a ) | ( b | ( c | a ) ) ) ) = ( b | ( c | a ) ) $=
     ( tshef 059ngA 059ngB eqtr ) ABCADZDZDZHIDZDJHKHDDDIABCEABCFG $.
  $( Step 1 for lemma ~ L28 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  065ngA $p |- ( ( a | ( a | ( b | a ) ) ) | a ) = ( ( a | ( a | ( b | a ) ) ) | ( ( b | a ) | ( a | ( b | a ) ) ) ) $=
     ( tshef L27 eqcom shefeq2 ) ABACZAGCZCZAHCIABADEF $.
  $( Step 2 for lemma ~ L28 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  065ngB $p |- ( ( a | ( a | ( b | a ) ) ) | ( ( b | a ) | ( a | ( b | a ) ) ) ) = ( a | ( b | a ) ) $=
     ( 059ng_ ) AABC $.
$( Prover9 step 65={para(64(a,1),59(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L28 $p |- ( ( a | ( a | ( b | a ) ) ) | a ) = ( a | ( b | a ) ) $=
     ( tshef 065ngA 065ngB eqtr ) AABACZCZCZACIGHCCHABDABEF $.
  $( Step 1 for lemma ~ 070ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  070ngA $p |- ( ( a | ( b | a ) ) | ( a | a ) ) = ( ( ( a | ( a | ( b | a ) ) ) | a ) | ( a | a ) ) $=
     ( tshef L28 eqcom shefeq1 ) ABACCZAGCACZAACHGABDEF $.
  $( Step 2 for lemma ~ 070ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  070ngB $p |- ( ( ( a | ( a | ( b | a ) ) ) | a ) | ( a | a ) ) = a $=
     ( tshef L26 ) AABACCCAD $.
$( Prover9 step 70={para(65(a,1),60(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  070ng_ $p |- ( ( a | ( b | a ) ) | ( a | a ) ) = a $=
     ( tshef 070ngA 070ngB eqtr ) ABACCZAACZCAGCACHCAABDABEF $.
  $( Step 1 for lemma ~ L29 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  072ngA $p |- ( a | ( ( b | a ) | ( b | a ) ) ) = ( ( ( b | a ) | ( ( ( b | a ) | ( a | a ) ) | ( b | a ) ) ) | ( ( b | a ) | ( b | a ) ) ) $=
     ( tshef L21 eqcom shefeq1 ) ABACZGAACCGCCZGGCHABADEF $.
  $( Step 2 for lemma ~ L29 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  072ngB $p |- ( ( ( b | a ) | ( ( ( b | a ) | ( a | a ) ) | ( b | a ) ) ) | ( ( b | a ) | ( b | a ) ) ) = ( b | a ) $=
     ( tshef 070ng_ ) BACZEAACCD $.
$( Prover9 step 72={para(50(a,1),70(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L29 $p |- ( a | ( ( b | a ) | ( b | a ) ) ) = ( b | a ) $=
     ( tshef 072ngA 072ngB eqtr ) ABACZGCZCGGAACCGCCHCGABDABEF $.
  $( Step 1 for lemma ~ L30 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  073ngA $p |- ( ( ( a | b ) | c ) | ( b | ( ( b | c ) | b ) ) ) = ( ( ( b | ( ( a | b ) | ( a | b ) ) ) | c ) | ( b | ( ( b | c ) | b ) ) ) $=
     ( tshef L29 eqcom shefeq11 ) ABDZBHHDDZCBBCDBDDIHBAEFG $.
  $( Step 2 for lemma ~ L30 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  073ngB $p |- ( ( ( b | ( ( a | b ) | ( a | b ) ) ) | c ) | ( b | ( ( b | c ) | b ) ) ) = c $=
     ( tshef ax-A ) CBABDZFDE $.
$( Prover9 step 73={para(72(a,1),3(a,1,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L30 $p |- ( ( ( a | b ) | c ) | ( b | ( ( b | c ) | b ) ) ) = c $=
     ( tshef 073ngA 073ngB eqtr ) ABDZCDBBCDBDDZDBHHDDCDIDCABCEABCFG $.
  $( Step 1 for lemma ~ 074ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  074ngA $p |- ( a | ( ( b | c ) | ( ( ( b | c ) | ( c | ( ( c | a ) | c ) ) ) | ( b | c ) ) ) ) = ( ( ( ( b | c ) | a ) | ( c | ( ( c | a ) | c ) ) ) | ( ( b | c ) | ( ( ( b | c ) | ( c | ( ( c | a ) | c ) ) ) | ( b | c ) ) ) ) $=
     ( tshef L30 eqcom shefeq1 ) ABCDZADCCADCDDZDZHHIDHDDJABCAEFG $.
  $( Step 2 for lemma ~ 074ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  074ngB $p |- ( ( ( ( b | c ) | a ) | ( c | ( ( c | a ) | c ) ) ) | ( ( b | c ) | ( ( ( b | c ) | ( c | ( ( c | a ) | c ) ) ) | ( b | c ) ) ) ) = ( c | ( ( c | a ) | c ) ) $=
     ( tshef ax-A ) CCADCDDBCDAE $.
$( Prover9 step 74={para(73(a,1),3(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  074ng_ $p |- ( a | ( ( b | c ) | ( ( ( b | c ) | ( c | ( ( c | a ) | c ) ) ) | ( b | c ) ) ) ) = ( c | ( ( c | a ) | c ) ) $=
     ( tshef 074ngA 074ngB eqtr ) ABCDZHCCADCDDZDHDDZDHADIDJDIABCEABCFG $.
  $( Step 1 for lemma ~ 075ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  075ngA $p |- ( a | ( ( ( b | a ) | b ) | ( b | ( ( b | a ) | b ) ) ) ) = ( a | ( ( ( b | a ) | b ) | ( ( ( ( b | a ) | b ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | a ) | b ) ) ) ) $=
     ( tshef L27 eqcom shefeq221 ) BBACZBCZBHCCZHHAIBGBDEF $.
  $( Step 2 for lemma ~ 075ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  075ngB $p |- ( a | ( ( ( b | a ) | b ) | ( ( ( ( b | a ) | b ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | a ) | b ) ) ) ) = ( b | ( ( b | a ) | b ) ) $=
     ( tshef 074ng_ ) ABACBD $.
$( Prover9 step 75={para(57(a,1),74(a,1,2,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  075ng_ $p |- ( a | ( ( ( b | a ) | b ) | ( b | ( ( b | a ) | b ) ) ) ) = ( b | ( ( b | a ) | b ) ) $=
     ( tshef 075ngA 075ngB eqtr ) ABACBCZBGCZCZCAGIGCCCHABDABEF $.
  $( Step 1 for lemma ~ L31 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  076ngA $p |- ( a | ( ( a | b ) | a ) ) = ( b | ( ( ( a | b ) | a ) | ( a | ( ( a | b ) | a ) ) ) ) $=
     ( tshef 075ng_ eqcom ) BABCACZAFCZCCGBADE $.
  $( Step 2 for lemma ~ L31 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  076ngB $p |- ( b | ( ( ( a | b ) | a ) | ( a | ( ( a | b ) | a ) ) ) ) = ( b | a ) $=
     ( tshef L27 shefeq2 ) ABCZACZAGCCABFADE $.
$( Prover9 step 76={para(64(a,1),75(a,1,2)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L31 $p |- ( a | ( ( a | b ) | a ) ) = ( b | a ) $=
     ( tshef ax-A eqcom L30 shefeq1 L27 shefeq221 shefeq2 eq4tr ) AABCZACZCZMBCNCZ
     MMNCZMCCZCZBQCBPCBACRNNMBDEOBQLABFGPAMMBLAHZIPABSJK $.
     $( ( tshef 076ngA 076ngB eqtr ) AABCACZCZBGHCCBACABDABEF $. $)
  $( Step 1 for lemma ~ L32 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  077ngA $p |- ( ( ( a | b ) | c ) | ( c | a ) ) = ( ( ( a | b ) | c ) | ( a | ( ( a | c ) | a ) ) ) $=
     ( tshef L31 eqcom shefeq2 ) CADZAACDADDZABDCDIHACEFG $.
  $( Step 2 for lemma ~ L32 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  077ngB $p |- ( ( ( a | b ) | c ) | ( a | ( ( a | c ) | a ) ) ) = c $=
     ( ax-A ) CABD $.
$( Prover9 step 77={para(76(a,1),3(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L32 $p |- ( ( ( a | b ) | c ) | ( c | a ) ) = c $=
     ( tshef 077ngA 077ngB eqtr ) ABDCDZCADDHAACDADDDCABCEABCFG $.
  $( Step 1 for lemma ~ L33 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  084ngA $p |- ( ( ( a | b ) | c ) | ( c | b ) ) = ( ( ( a | b ) | c ) | ( b | ( ( b | c ) | b ) ) ) $=
     ( tshef L31 eqcom shefeq2 ) CBDZBBCDBDDZABDCDIHBCEFG $.
  $( Step 2 for lemma ~ L33 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  084ngB $p |- ( ( ( a | b ) | c ) | ( b | ( ( b | c ) | b ) ) ) = c $=
     ( L30 ) ABCD $.
$( Prover9 step 84={para(76(a,1),73(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L33 $p |- ( ( ( a | b ) | c ) | ( c | b ) ) = c $=
     ( tshef 084ngA 084ngB eqtr ) ABDCDZCBDDHBBCDBDDDCABCEABCFG $.
  $( Step 1 for lemma ~ L34 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  096ngA $p |- ( a | ( ( a | b ) | a ) ) = ( ( ( ( b | p ) | a ) | ( a | b ) ) | ( ( a | b ) | a ) ) $=
     ( tshef L32 eqcom shefeq1 ) ABCDADABDZDZHADIABCAEFG $.
  $( Step 2 for lemma ~ L34 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  096ngB $p |- ( ( ( ( b | p ) | a ) | ( a | b ) ) | ( ( a | b ) | a ) ) = ( a | b ) $=
     ( tshef L33 ) BCDAABDE $.
$( Prover9 step 96={para(77(a,1),84(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L34 $p |- ( a | ( ( a | b ) | a ) ) = ( a | b ) $=
     ( wvx tshef 096ngA 096ngB eqtr ) AABDZADZDBCDADHDIDHABCEABCFG $.
  $( Step 1 for lemma ~ L35 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  099ngA $p |- ( ( ( a | b ) | c ) | ( a | c ) ) = ( ( ( a | b ) | c ) | ( a | ( ( a | c ) | a ) ) ) $=
     ( tshef L34 eqcom shefeq2 ) ACDZAHADDZABDCDIHACEFG $.
  $( Step 2 for lemma ~ L35 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  099ngB $p |- ( ( ( a | b ) | c ) | ( a | ( ( a | c ) | a ) ) ) = c $=
     ( ax-A ) CABD $.
$( Prover9 step 99={para(96(a,1),3(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L35 $p |- ( ( ( a | b ) | c ) | ( a | c ) ) = c $=
     ( tshef 099ngA 099ngB eqtr ) ABDCDZACDZDHAIADDDCABCEABCFG $.
  $( Step 1 for lemma ~ L36 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  104ngA $p |- ( a | b ) = ( a | ( ( a | b ) | a ) ) $=
     ( tshef L34 eqcom ) AABCZACCFABDE $.
  $( Step 2 for lemma ~ L36 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  104ngB $p |- ( a | ( ( a | b ) | a ) ) = ( b | a ) $=
     ( L31 ) ABC $.
$( Prover9 step 104={para(96(a,1),76(a,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L36 $p |- ( a | b ) = ( b | a ) $=
     ( tshef 104ngA 104ngB eqtr ) ABCZAGACCBACABDABEF $.
  $( Step 1 for lemma ~ L37 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  162ngA $p |- ( ( a | b ) | c ) = ( ( b | a ) | c ) $=
     ( tshef L36 shefeq1 ) ABDBADCABEF $.
  $( Step 2 for lemma ~ L37 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  162ngB $p |- ( ( b | a ) | c ) = ( c | ( b | a ) ) $=
     ( tshef L36 ) BADCE $.
$( Prover9 step 162={para(160(a,1),104(a,1)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L37 $p |- ( ( a | b ) | c ) = ( c | ( b | a ) ) $=
     ( tshef 162ngA 162ngB eqtr ) ABDCDBADZCDCHDABCEABCFG $.
  $( Step 1 for lemma ~ 079ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  079ngA $p |- ( ( a | b ) | ( b | ( c | a ) ) ) = ( ( a | b ) | ( ( c | a ) | ( ( ( c | a ) | b ) | ( c | a ) ) ) ) $=
     ( tshef L31 eqcom shefeq2 ) BCADZDZHHBDHDDZABDJIHBEFG $.
  $( Step 2 for lemma ~ 079ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  079ngB $p |- ( ( a | b ) | ( ( c | a ) | ( ( ( c | a ) | b ) | ( c | a ) ) ) ) = b $=
     ( L2 ) ABCD $.
$( Prover9 step 79={para(76(a,1),7(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  079ng_ $p |- ( ( a | b ) | ( b | ( c | a ) ) ) = b $=
     ( tshef 079ngA 079ngB eqtr ) ABDZBCADZDDHIIBDIDDDBABCEABCFG $.
  $( Step 1 for lemma ~ L38 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  113ngA $p |- ( ( a | b ) | ( a | ( c | b ) ) ) = ( ( b | a ) | ( a | ( c | b ) ) ) $=
     ( tshef L36 shefeq1 ) ABDBADACBDDABEF $.
  $( Step 2 for lemma ~ L38 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  113ngB $p |- ( ( b | a ) | ( a | ( c | b ) ) ) = a $=
     ( 079ng_ ) BACD $.
$( Prover9 step 113={para(104(a,1),79(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L38 $p |- ( ( a | b ) | ( a | ( c | b ) ) ) = a $=
     ( tshef 113ngA 113ngB eqtr ) ABDACBDDZDBADHDAABCEABCFG $.
  $( Step 1 for lemma ~ L39 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  081ngA $p |- ( ( a | b ) | ( a | a ) ) = ( ( b | a ) | ( a | a ) ) $=
     ( tshef L36 shefeq1 ) ABCBACAACABDE $.
  $( Step 2 for lemma ~ L39 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  081ngB $p |- ( ( b | a ) | ( a | a ) ) = a $=
     ( L26 ) BAC $.
$( Prover9 step 81={para(76(a,1),46(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L39 $p |- ( ( a | b ) | ( a | a ) ) = a $=
     ( tshef 081ngA 081ngB eqtr ) ABCAACZCBACGCAABDABEF $.
  $( Step 1 for lemma ~ L40 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  089ngA $p |- ( ( a | b ) | ( b | ( a | c ) ) ) = ( ( ( ( a | c ) | ( a | a ) ) | b ) | ( b | ( a | c ) ) ) $=
     ( tshef L39 eqcom shefeq11 ) AACDZAADDZBBHDIAACEFG $.
  $( Step 2 for lemma ~ L40 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  089ngB $p |- ( ( ( ( a | c ) | ( a | a ) ) | b ) | ( b | ( a | c ) ) ) = b $=
     ( tshef L32 ) ACDAADBE $.
$( Prover9 step 89={para(81(a,1),77(a,1,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L40 $p |- ( ( a | b ) | ( b | ( a | c ) ) ) = b $=
     ( tshef 089ngA 089ngB eqtr ) ABDBACDZDZDHAADDBDIDBABCEABCFG $.
  $( Step 1 for lemma ~ L41 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  121ngA $p |- ( a | ( b | ( a | ( b | c ) ) ) ) = ( ( ( b | a ) | ( a | ( b | c ) ) ) | ( b | ( a | ( b | c ) ) ) ) $=
     ( tshef L40 eqcom shefeq1 ) ABADABCDDZDZBHDIABACEFG $.
  $( Step 2 for lemma ~ L41 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  121ngB $p |- ( ( ( b | a ) | ( a | ( b | c ) ) ) | ( b | ( a | ( b | c ) ) ) ) = ( a | ( b | c ) ) $=
     ( tshef L35 ) BAABCDDE $.
$( Prover9 step 121={para(89(a,1),99(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L41 $p |- ( a | ( b | ( a | ( b | c ) ) ) ) = ( a | ( b | c ) ) $=
     ( tshef 121ngA 121ngB eqtr ) ABABCDDZDZDBADHDIDHABCEABCFG $.
  $( Step 1 for lemma ~ L42 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  137ngA $p |- ( a | ( ( a | b ) | b ) ) = ( a | ( ( a | b ) | ( a | ( ( a | b ) | b ) ) ) ) $=
     ( tshef L41 eqcom ) AABCZAFBCCZCCGAFBDE $.
  $( Step 2 for lemma ~ L42 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  137ngB $p |- ( a | ( ( a | b ) | ( a | ( ( a | b ) | b ) ) ) ) = ( a | a ) $=
     ( tshef L38 shefeq2 ) ABCZAFBCCCAAABFDE $.
$( Prover9 step 137={para(113(a,1),121(a,1,2)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L42 $p |- ( a | ( ( a | b ) | b ) ) = ( a | a ) $=
     ( tshef 137ngA 137ngB eqtr ) AABCZBCCZAGHCCAACABDABEF $.

$(
@( Step 1 for lemma ~ 160ng_ . @)
160ngA @p |- ( a | ( b | c ) ) = ( a | ( c | ( a | ( c | b ) ) ) ) @=
  ( tshef 136ng_ eqcom ) ACACBDDDDABCDDACBEF @.
@( Step 2 for lemma ~ 160ng_ . @)
160ngB @p |- ( a | ( c | ( a | ( c | b ) ) ) ) = ( a | ( c | b ) ) @=
  ( L41 ) ACBD @.
@( Prover9 step 160={para(136(a,1),121(a,1))}. $)
 $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.  @)
160ng_ @p |- ( a | ( b | c ) ) = ( a | ( c | b ) ) @=
  ( tshef 160ngA 160ngB eqtr ) ABCDDACACBDDZDDHABCEABCFG @.
$)

  $( Step 1 for lemma ~ L43 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  149ngA $p |- ( a | ( b | ( a | b ) ) ) = ( a | ( ( a | b ) | b ) ) $=
     ( tshef L36 shefeq2 ) BABCZCFBCABFDE $.
  $( Step 2 for lemma ~ L43 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  149ngB $p |- ( a | ( ( a | b ) | b ) ) = ( a | a ) $=
     ( L42 ) ABC $.
$( Prover9 step 149={para(104(a,1),137(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L43 $p |- ( a | ( b | ( a | b ) ) ) = ( a | a ) $=
     ( tshef 149ngA 149ngB eqtr ) ABABCZCCAGBCCAACABDABEF $.
  $( Step 1 for lemma ~ 136ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  136ngA $p |- ( a | ( b | ( a | ( b | c ) ) ) ) = ( a | ( b | c ) ) $=
     ( L41 ) ABCD $.
  $( Step 2 for lemma ~ 136ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  136ngB $p |- ( a | ( b | c ) ) = ( a | ( c | b ) ) $=
     ( tshef L36 shefeq2 ) BCDCBDABCEF $.
$( Prover9 step 136={para(104(a,1),121(a,2,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  136ng_ $p |- ( a | ( b | ( a | ( b | c ) ) ) ) = ( a | ( c | b ) ) $=
     ( tshef 136ngA 136ngB eqtr ) ABABCDDZDDHACBDDABCEABCFG $.
  $( Step 1 for lemma ~ L44 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  161ngA $p |- ( a | ( b | b ) ) = ( a | ( b | ( a | ( b | a ) ) ) ) $=
     ( tshef L43 eqcom shefeq2 ) BBCZBABACCCZAHGBADEF $.
  $( Step 2 for lemma ~ L44 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  161ngB $p |- ( a | ( b | ( a | ( b | a ) ) ) ) = ( a | ( a | b ) ) $=
     ( 136ng_ ) ABAC $.
$( Prover9 step 161={para(149(a,1),136(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L44 $p |- ( a | ( b | b ) ) = ( a | ( a | b ) ) $=
     ( tshef 161ngA 161ngB eqtr ) ABBCCABABACCCCAABCCABDABEF $.
  $( Step 1 for lemma ~ 102ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  102ngA $p |- ( ( ( a | b ) | c ) | ( b | c ) ) = ( ( ( a | b ) | c ) | ( c | b ) ) $=
     ( tshef L36 shefeq2 ) BCDCBDABDCDBCEF $.
  $( Step 2 for lemma ~ 102ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  102ngB $p |- ( ( ( a | b ) | c ) | ( c | b ) ) = c $=
     ( L33 ) ABCD $.
$( Prover9 step 102={para(96(a,1),73(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  102ng_ $p |- ( ( ( a | b ) | c ) | ( b | c ) ) = c $=
     ( tshef 102ngA 102ngB eqtr ) ABDCDZBCDDHCBDDCABCEABCFG $.
  $( Step 1 for lemma ~ L45 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  116ngA $p |- ( ( a | b ) | ( a | ( b | c ) ) ) = ( ( b | a ) | ( a | ( b | c ) ) ) $=
     ( tshef L36 shefeq1 ) ABDBADABCDDABEF $.
  $( Step 2 for lemma ~ L45 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  116ngB $p |- ( ( b | a ) | ( a | ( b | c ) ) ) = a $=
     ( L40 ) BACD $.
$( Prover9 step 116={para(104(a,1),89(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L45 $p |- ( ( a | b ) | ( a | ( b | c ) ) ) = a $=
     ( tshef 116ngA 116ngB eqtr ) ABDABCDDZDBADHDAABCEABCFG $.
  $( Step 1 for lemma ~ 124ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  124ngA $p |- ( ( ( a | ( b | c ) ) | ( b | ( c | d ) ) ) | b ) = ( ( ( a | ( b | c ) ) | ( b | ( c | d ) ) ) | ( ( b | c ) | ( b | ( c | d ) ) ) ) $=
     ( tshef L45 eqcom shefeq2 ) BBCEZBCDEEZEZAIEJEKBBCDFGH $.
  $( Step 2 for lemma ~ 124ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  124ngB $p |- ( ( ( a | ( b | c ) ) | ( b | ( c | d ) ) ) | ( ( b | c ) | ( b | ( c | d ) ) ) ) = ( b | ( c | d ) ) $=
     ( tshef 102ng_ ) ABCEBCDEEF $.
$( Prover9 step 124={para(116(a,1),102(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  124ng_ $p |- ( ( ( a | ( b | c ) ) | ( b | ( c | d ) ) ) | b ) = ( b | ( c | d ) ) $=
     ( tshef 124ngA 124ngB eqtr ) ABCEZEBCDEEZEZBEKIJEEJABCDFABCDGH $.
  $( Step 1 for lemma ~ L46 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  164ngA $p |- ( ( a | ( a | b ) ) | ( a | ( c | ( b | b ) ) ) ) = ( ( a | ( b | b ) ) | ( a | ( c | ( b | b ) ) ) ) $=
     ( tshef L44 eqcom shefeq1 ) AABDDZABBDZDZACIDDJHABEFG $.
  $( Step 2 for lemma ~ L46 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  164ngB $p |- ( ( a | ( b | b ) ) | ( a | ( c | ( b | b ) ) ) ) = a $=
     ( tshef L38 ) ABBDCE $.
$( Prover9 step 164={para(161(a,1),113(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L46 $p |- ( ( a | ( a | b ) ) | ( a | ( c | ( b | b ) ) ) ) = a $=
     ( tshef 164ngA 164ngB eqtr ) AABDDACBBDZDDZDAHDIDAABCEABCFG $.
  $( Step 1 for lemma ~ T2 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  189ngA $p |- ( a | ( b | ( b | b ) ) ) = ( ( ( a | ( a | b ) ) | ( a | ( b | ( b | b ) ) ) ) | a ) $=
     ( tshef 124ng_ eqcom ) AABCCABBBCZCCZCACGAABFDE $.
  $( Step 2 for lemma ~ T2 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  189ngB $p |- ( ( ( a | ( a | b ) ) | ( a | ( b | ( b | b ) ) ) ) | a ) = ( a | a ) $=
     ( tshef L46 shefeq1 ) AABCCABBBCCCCAAABBDE $.


$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
           Second Sheffer axiom for BA
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)


$( Prover9 step 189={para(164(a,1),124(a,1,1)),flip(a)}. $)
  $( Second Sheffer axiom for a Boolean algebra.  (Contributed by NM and RV,
     1-Oct-2021.) $)
  T2 $p |- ( a | ( b | ( b | b ) ) ) = ( a | a ) $=
     ( tshef L33 eqcom L36 shefeq2 L45 L46 shefeq1 eq4tr ) ABBBCZCCZAABCZCMCZMNCZC
     ZONMCZCOACAACQMANMDEPRORPNMFEGRAOABLHGOAAABBIJK $.
     $( ( tshef 189ngA 189ngB eqtr ) ABBBCCCZAABCCGCACAACABDABEF $. $)


$(
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
         Lemmas L47 through L64 towards proving third Sheffer axiom
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
$)

  $( Step 1 for lemma ~ L47 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  105ngA $p |- ( ( a | a ) | ( a | b ) ) = ( ( a | b ) | ( a | a ) ) $=
     ( tshef L36 ) AACABCD $.
  $( Step 2 for lemma ~ L47 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  105ngB $p |- ( ( a | b ) | ( a | a ) ) = a $=
     ( L39 ) ABC $.
$( Prover9 step 105={para(96(a,1),79(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L47 $p |- ( ( a | a ) | ( a | b ) ) = a $=
     ( tshef 105ngA 105ngB eqtr ) AACZABCZCHGCAABDABEF $.
  $( Step 1 for lemma ~ L48 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  117ngA $p |- ( ( a | b ) | ( ( a | c ) | b ) ) = ( ( a | b ) | ( b | ( a | c ) ) ) $=
     ( tshef L36 shefeq2 ) ACDZBDBGDABDGBEF $.
  $( Step 2 for lemma ~ L48 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  117ngB $p |- ( ( a | b ) | ( b | ( a | c ) ) ) = b $=
     ( L40 ) ABCD $.
$( Prover9 step 117={para(104(a,1),89(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L48 $p |- ( ( a | b ) | ( ( a | c ) | b ) ) = b $=
     ( tshef 117ngA 117ngB eqtr ) ABDZACDZBDDHBIDDBABCEABCFG $.
  $( Step 1 for lemma ~ 125ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  125ngA $p |- ( a | ( ( ( b | c ) | a ) | b ) ) = ( ( ( b | a ) | ( ( b | c ) | a ) ) | ( ( ( b | c ) | a ) | b ) ) $=
     ( tshef L48 eqcom shefeq1 ) ABADBCDADZDZHBDIABACEFG $.
  $( Step 2 for lemma ~ 125ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  125ngB $p |- ( ( ( b | a ) | ( ( b | c ) | a ) ) | ( ( ( b | c ) | a ) | b ) ) = ( ( b | c ) | a ) $=
     ( tshef L32 ) BABCDADE $.
$( Prover9 step 125={para(117(a,1),77(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  125ng_ $p |- ( a | ( ( ( b | c ) | a ) | b ) ) = ( ( b | c ) | a ) $=
     ( tshef 125ngA 125ngB eqtr ) ABCDADZBDZDBADHDIDHABCEABCFG $.
  $( Step 1 for lemma ~ L49 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  159ngA $p |- ( a | ( ( ( b | c ) | a ) | c ) ) = ( a | ( ( ( c | b ) | a ) | c ) ) $=
     ( tshef L36 shefeq211 ) BCDCBDACABCEF $.
  $( Step 2 for lemma ~ L49 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  159ngB $p |- ( a | ( ( ( c | b ) | a ) | c ) ) = ( ( c | b ) | a ) $=
     ( 125ng_ ) ACBD $.
$( Prover9 step 159={para(104(a,1),125(a,1,2,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L49 $p |- ( a | ( ( ( b | c ) | a ) | c ) ) = ( ( c | b ) | a ) $=
     ( tshef 159ngA 159ngB eqtr ) ABCDADCDDACBDADZCDDHABCEABCFG $.
  $( Step 1 for lemma ~ L50 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  163ngA $p |- ( ( a | a ) | b ) = ( b | ( a | a ) ) $=
     ( L37 ) AABC $.
  $( Step 2 for lemma ~ L50 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  163ngB $p |- ( b | ( a | a ) ) = ( b | ( b | a ) ) $=
     ( L44 ) BAC $.
$( Prover9 step 163={para(161(a,1),104(a,1)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L50 $p |- ( ( a | a ) | b ) = ( b | ( b | a ) ) $=
     ( tshef 163ngA 163ngB eqtr ) AACZBCBGCBBACCABDABEF $.

$(
@( Step 1 for lemma ~ 167ng_ . @) 167ngA @p |- ( ( a | b ) | ( c | d ) ) = ( ( d | c ) | ( a | b ) ) @=
  ( tshef L37 eqcom ) ADEBCEZEHDAEEADHFG @.
@( Step 2 for lemma ~ 167ng_ . @) 167ngB @p |- ( ( d | c ) | ( a | b ) ) = ( ( d | c ) | ( b | a ) ) @=
  ( tshef L36 shefeq2 ) BCECBEADEBCFG @.
@( Prover9 step 167={para(162(a,1),160(a,1))}. $)
 $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.  @) 167ng_ @p |- ( ( a | b ) | ( c | d ) ) = ( ( d | c ) | ( b | a ) ) @=
  ( tshef 167ngA 167ngB eqtr ) BCEZDAEEADEZIEJCBEEABCDFABCDGH @.
$)

  $( Step 1 for lemma ~ L51 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  098ngA $p |- ( ( ( ( a | ( b | c ) ) | d ) | ( b | a ) ) | a ) = ( ( ( ( a | ( b | c ) ) | d ) | ( b | a ) ) | ( ( b | a ) | ( a | ( b | c ) ) ) ) $=
     ( tshef L40 eqcom shefeq2 ) ABAEZABCEEZEZJDEIEKABACFGH $.
  $( Step 2 for lemma ~ L51 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  098ngB $p |- ( ( ( ( a | ( b | c ) ) | d ) | ( b | a ) ) | ( ( b | a ) | ( a | ( b | c ) ) ) ) = ( b | a ) $=
     ( tshef L32 ) ABCEEDBAEF $.
$( Prover9 step 98={para(89(a,1),77(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L51 $p |- ( ( ( ( a | ( b | c ) ) | d ) | ( b | a ) ) | a ) = ( b | a ) $=
     ( tshef 098ngA 098ngB eqtr ) ABCEEZDEBAEZEZAEKJIEEJABCDFABCDGH $.
  $( Step 1 for lemma ~ 169ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  169ngA $p |- ( ( a | b ) | ( b | ( ( b | ( a | c ) ) | d ) ) ) = ( ( ( ( ( b | ( a | c ) ) | d ) | ( a | b ) ) | b ) | ( b | ( ( b | ( a | c ) ) | d ) ) ) $=
     ( tshef L51 eqcom shefeq1 ) ABEZBACEEDEZIEBEZBJEKIBACDFGH $.
  $( Step 2 for lemma ~ 169ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  169ngB $p |- ( ( ( ( ( b | ( a | c ) ) | d ) | ( a | b ) ) | b ) | ( b | ( ( b | ( a | c ) ) | d ) ) ) = b $=
     ( tshef L32 ) BACEEDEABEBF $.
$( Prover9 step 169={para(98(a,1),77(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  169ng_ $p |- ( ( a | b ) | ( b | ( ( b | ( a | c ) ) | d ) ) ) = b $=
     ( tshef 169ngA 169ngB eqtr ) ABEZBBACEEDEZEZEJIEBEKEBABCDFABCDGH $.
  $( Step 1 for lemma ~ 170ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  170ngA $p |- ( ( ( a | b ) | c ) | ( c | ( ( c | b ) | d ) ) ) = ( ( ( a | b ) | c ) | ( c | ( ( c | ( ( a | b ) | ( ( p | a ) | ( ( ( p | a ) | b ) | ( p | a ) ) ) ) ) | d ) ) ) $=
     ( tshef L2 eqcom shefeq2212 ) BABFZEAFZKBFKFFFZCDCJCFLBABEGHI $.
  $( Step 2 for lemma ~ 170ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  170ngB $p |- ( ( ( a | b ) | c ) | ( c | ( ( c | ( ( a | b ) | ( ( p | a ) | ( ( ( p | a ) | b ) | ( p | a ) ) ) ) ) | d ) ) ) = c $=
     ( tshef 169ng_ ) ABFCEAFZHBFHFFDG $.
$( Prover9 step 170={para(7(a,1),169(a,1,2,2,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  170ng_ $p |- ( ( ( a | b ) | c ) | ( c | ( ( c | b ) | d ) ) ) = c $=
     ( wvx tshef 170ngA 170ngB eqtr ) ABFZCFZCCBFDFFFKCCJEAFZLBFLFFFFDFFFCABCDEGAB
     CDEHI $.
  $( Step 1 for lemma ~ L52 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  179ngA $p |- ( ( ( ( a | b ) | c ) | a ) | ( ( d | b ) | a ) ) = ( ( ( d | b ) | a ) | ( a | ( ( a | b ) | c ) ) ) $=
     ( tshef L37 ) ABECEADBEAEF $.
  $( Step 2 for lemma ~ L52 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  179ngB $p |- ( ( ( d | b ) | a ) | ( a | ( ( a | b ) | c ) ) ) = a $=
     ( 170ng_ ) DBACE $.
$( Prover9 step 179={para(170(a,1),162(a,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L52 $p |- ( ( ( ( a | b ) | c ) | a ) | ( ( d | b ) | a ) ) = a $=
     ( wvx tshef L37 L2 eqcom shefeq2212 L51 shefeq1 L32 eq4tr ) ABFCFZAFDBFZAFZFQ
     AOFFQAAPEDFZRBFRFFZFZFCFZFZFUAQFAFZUBFAOAQGBTACAQTBDBEHIJQUCUBUCQAPSCKILUA
     QAMN $.
     $( ( tshef 179ngA 179ngB eqtr ) ABECEZAEDBEAEZEJAIEEAABCDFABCDGH $. $)
  $( Step 1 for lemma ~ 148ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  148ngA $p |- ( ( ( a | b ) | b ) | a ) = ( a | ( ( a | b ) | b ) ) $=
     ( tshef L36 ) ABCBCAD $.
  $( Step 2 for lemma ~ 148ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  148ngB $p |- ( a | ( ( a | b ) | b ) ) = ( a | a ) $=
     ( L42 ) ABC $.
$( Prover9 step 148={para(137(a,1),104(a,1)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  148ng_ $p |- ( ( ( a | b ) | b ) | a ) = ( a | a ) $=
     ( tshef 148ngA 148ngB eqtr ) ABCBCZACAGCAACABDABEF $.
  $( Step 1 for lemma ~ 151ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  151ngA $p |- ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) = ( ( ( ( ( a | b ) | c ) | ( c | b ) ) | ( c | b ) ) | ( ( a | b ) | c ) ) $=
     ( tshef 148ng_ eqcom ) ABDCDZCBDZDHDGDGGDGHEF $.
  $( Step 2 for lemma ~ 151ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  151ngB $p |- ( ( ( ( ( a | b ) | c ) | ( c | b ) ) | ( c | b ) ) | ( ( a | b ) | c ) ) = ( ( c | ( c | b ) ) | ( ( a | b ) | c ) ) $=
     ( tshef L33 shefeq11 ) ABDCDZCBDZDCHGABCEF $.
$( Prover9 step 151={para(84(a,1),148(a,1,1,1)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  151ng_ $p |- ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) = ( ( c | ( c | b ) ) | ( ( a | b ) | c ) ) $=
     ( tshef 151ngA 151ngB eqtr ) ABDCDZHDHCBDZDIDHDCIDHDABCEABCFG $.
  $( Step 1 for lemma ~ L53 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  193ngA $p |- ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) = ( ( c | ( c | b ) ) | ( ( a | b ) | c ) ) $=
     ( 151ng_ ) ABCD $.
  $( Step 2 for lemma ~ L53 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  193ngB $p |- ( ( c | ( c | b ) ) | ( ( a | b ) | c ) ) = ( ( ( b | b ) | c ) | ( ( a | b ) | c ) ) $=
     ( tshef L50 eqcom shefeq1 ) CCBDDZBBDCDZABDCDIHBCEFG $.
$( Prover9 step 193={para(163(a,2),151(a,2,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L53 $p |- ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) = ( ( ( b | b ) | c ) | ( ( a | b ) | c ) ) $=
     ( tshef L42 eqcom L36 L33 shefeq11 L50 shefeq1 eq4tr ) ABDCDZMDZMMCBDZDZODZDZ
     QMDZCODZMDBBDCDZMDRNMOEFSRQMGFPCOMABCHITUAMUATBCJFKL $.
     $( ( tshef 193ngA 193ngB eqtr ) ABDCDZHDCCBDDHDBBDCDHDABCEABCFG $. $)
  $( Step 1 for lemma ~ 095ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  095ngA $p |- ( a | ( ( a | b ) | ( c | b ) ) ) = ( ( ( ( c | b ) | a ) | ( a | b ) ) | ( ( a | b ) | ( c | b ) ) ) $=
     ( tshef L33 eqcom shefeq1 ) ACBDZADABDZDZIHDJACBAEFG $.
  $( Step 2 for lemma ~ 095ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  095ngB $p |- ( ( ( ( c | b ) | a ) | ( a | b ) ) | ( ( a | b ) | ( c | b ) ) ) = ( a | b ) $=
     ( tshef L32 ) CBDAABDE $.
$( Prover9 step 95={para(84(a,1),77(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  095ng_ $p |- ( a | ( ( a | b ) | ( c | b ) ) ) = ( a | b ) $=
     ( tshef 095ngA 095ngB eqtr ) AABDZCBDZDZDIADHDJDHABCEABCFG $.
  $( Step 1 for lemma ~ L54 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  195ngA $p |- ( ( a | a ) | ( ( ( b | a ) | c ) | ( ( b | a ) | c ) ) ) = ( ( a | a ) | ( ( ( a | a ) | c ) | ( ( b | a ) | c ) ) ) $=
     ( tshef L53 shefeq2 ) BADCDZGDAADZCDGDHBACEF $.
  $( Step 2 for lemma ~ L54 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  195ngB $p |- ( ( a | a ) | ( ( ( a | a ) | c ) | ( ( b | a ) | c ) ) ) = ( ( a | a ) | c ) $=
     ( tshef 095ng_ ) AADCBADE $.
$( Prover9 step 195={para(193(a,2),95(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L54 $p |- ( ( a | a ) | ( ( ( b | a ) | c ) | ( ( b | a ) | c ) ) ) = ( ( a | a ) | c ) $=
     ( tshef 195ngA 195ngB eqtr ) AADZBADCDZIDDHHCDZIDDJABCEABCFG $.
  $( Step 1 for lemma ~ L55 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  135ngA $p |- ( a | ( ( b | a ) | b ) ) = ( a | ( ( a | b ) | b ) ) $=
     ( tshef L36 shefeq21 ) BACABCBABADE $.
  $( Step 2 for lemma ~ L55 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  135ngB $p |- ( a | ( ( a | b ) | b ) ) = ( a | a ) $=
     ( L42 ) ABC $.
$( Prover9 step 135={para(79(a,1),121(a,1,2)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L55 $p |- ( a | ( ( b | a ) | b ) ) = ( a | a ) $=
     ( tshef 135ngA 135ngB eqtr ) ABACBCCAABCBCCAACABDABEF $.
  $( Step 1 for lemma ~ L56 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  142ngA $p |- ( ( a | ( ( b | a ) | b ) ) | ( a | c ) ) = ( ( a | a ) | ( a | c ) ) $=
     ( tshef L55 shefeq1 ) ABADBDDAADACDABEF $.
  $( Step 2 for lemma ~ L56 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  142ngB $p |- ( ( a | a ) | ( a | c ) ) = a $=
     ( L47 ) ABC $.
$( Prover9 step 142={para(135(a,2),105(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L56 $p |- ( ( a | ( ( b | a ) | b ) ) | ( a | c ) ) = a $=
     ( tshef 142ngA 142ngB eqtr ) ABADBDDACDZDAADHDAABCEACFG $.
  $( Step 1 for lemma ~ 196ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  196ngA $p |- ( ( a | a ) | ( ( b | ( c | a ) ) | b ) ) = ( ( a | a ) | ( ( ( c | a ) | ( ( b | ( c | a ) ) | b ) ) | ( ( c | a ) | ( ( b | ( c | a ) ) | b ) ) ) ) $=
     ( tshef L54 eqcom ) AADZCADZBHDBDZDZJDDGIDACIEF $.
  $( Step 2 for lemma ~ 196ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  196ngB $p |- ( ( a | a ) | ( ( ( c | a ) | ( ( b | ( c | a ) ) | b ) ) | ( ( c | a ) | ( ( b | ( c | a ) ) | b ) ) ) ) = ( ( a | a ) | ( c | a ) ) $=
     ( tshef L56 shefeq2 ) CADZBGDBDZDZIDGAADGBHEF $.
$( Prover9 step 196={para(142(a,1),195(a,1,2)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  196ng_ $p |- ( ( a | a ) | ( ( b | ( c | a ) ) | b ) ) = ( ( a | a ) | ( c | a ) ) $=
     ( tshef 196ngA 196ngB eqtr ) AADZBCADZDBDZDHIJDZKDDHIDABCEABCFG $.
  $( Step 1 for lemma ~ 083ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  083ngA $p |- ( ( a | a ) | ( b | a ) ) = ( ( a | a ) | ( a | b ) ) $=
     ( tshef L36 shefeq2 ) BACABCAACBADE $.
  $( Step 2 for lemma ~ 083ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  083ngB $p |- ( ( a | a ) | ( a | b ) ) = a $=
     ( L47 ) ABC $.
$( Prover9 step 83={para(76(a,1),50(a,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  083ng_ $p |- ( ( a | a ) | ( b | a ) ) = a $=
     ( tshef 083ngA 083ngB eqtr ) AACZBACCGABCCAABDABEF $.
  $( Step 1 for lemma ~ L57 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  197ngA $p |- ( ( a | a ) | ( ( b | ( c | a ) ) | b ) ) = ( ( a | a ) | ( c | a ) ) $=
     ( 196ng_ ) ABCD $.
  $( Step 2 for lemma ~ L57 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  197ngB $p |- ( ( a | a ) | ( c | a ) ) = a $=
     ( 083ng_ ) ABC $.
$( Prover9 step 197={para(196(a,2),83(a,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L57 $p |- ( ( a | a ) | ( ( b | ( c | a ) ) | b ) ) = a $=
     ( tshef L54 eqcom L56 shefeq2 L36 L47 eq4tr ) AADZBCADZDBDZDZLMNDZPDZDZLMDLAC
     DZDAROACNEFQMLMBNGHMSLCAIHACJK $.
     $( ( tshef 197ngA 197ngB eqtr ) AADZBCADZDBDDHIDAABCEACFG $. $)
  $( Step 1 for lemma ~ 202ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  202ngA $p |- ( ( a | ( ( b | ( c | a ) ) | b ) ) | a ) = ( ( a | ( ( b | ( c | a ) ) | b ) ) | ( ( a | a ) | ( ( b | ( c | a ) ) | b ) ) ) $=
     ( tshef L57 eqcom shefeq2 ) AAADBCADDBDZDZAHDIAABCEFG $.
  $( Step 2 for lemma ~ 202ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  202ngB $p |- ( ( a | ( ( b | ( c | a ) ) | b ) ) | ( ( a | a ) | ( ( b | ( c | a ) ) | b ) ) ) = ( ( b | ( c | a ) ) | b ) $=
     ( tshef L48 ) ABCADDBDAE $.
$( Prover9 step 202={para(197(a,1),117(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  202ng_ $p |- ( ( a | ( ( b | ( c | a ) ) | b ) ) | a ) = ( ( b | ( c | a ) ) | b ) $=
     ( tshef 202ngA 202ngB eqtr ) ABCADDBDZDZADIAADHDDHABCEABCFG $.
  $( Step 1 for lemma ~ 209ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  209ngA $p |- ( ( a | ( ( ( b | c ) | a ) | c ) ) | a ) = ( ( c | ( ( a | ( ( ( b | c ) | a ) | c ) ) | a ) ) | c ) $=
     ( tshef 202ng_ eqcom ) CABCDADZCDDADZDCDHCAGEF $.
  $( Step 2 for lemma ~ 209ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  209ngB $p |- ( ( c | ( ( a | ( ( ( b | c ) | a ) | c ) ) | a ) ) | c ) = ( ( c | ( ( ( c | b ) | a ) | a ) ) | c ) $=
     ( tshef L49 shefeq121 ) ABCDADCDDCBDADACCABCEF $.
$( Prover9 step 209={para(159(a,1),202(a,1,1,2,1)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  209ng_ $p |- ( ( a | ( ( ( b | c ) | a ) | c ) ) | a ) = ( ( c | ( ( ( c | b ) | a ) | a ) ) | c ) $=
     ( tshef 209ngA 209ngB eqtr ) ABCDADCDDADZCHDCDCCBDADADDCDABCEABCFG $.
  $( Step 1 for lemma ~ L58 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  210ngA $p |- ( ( a | ( ( ( a | b ) | c ) | c ) ) | a ) = ( ( c | ( ( ( b | a ) | c ) | a ) ) | c ) $=
     ( tshef 209ng_ eqcom ) CBADCDADDCDAABDCDCDDADCBAEF $.
  $( Step 2 for lemma ~ L58 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  210ngB $p |- ( ( c | ( ( ( b | a ) | c ) | a ) ) | c ) = ( ( ( a | b ) | c ) | c ) $=
     ( tshef L49 shefeq1 ) CBADCDADDABDCDCCBAEF $.
$( Prover9 step 210={para(159(a,1),209(a,1,1)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L58 $p |- ( ( a | ( ( ( a | b ) | c ) | c ) ) | a ) = ( ( ( a | b ) | c ) | c ) $=
     ( tshef L49 eqcom shefeq121 L57 shefeq2 L48 shefeq1 eq4tr ) AABDCDZCDZDADACBA
     DCDZADDZCDZDZADRAADQDZDQNMPCAAPMCBAEZFGASRSAACOHFIAQAJPMCTKL $.
     $( ( tshef 210ngA 210ngB eqtr ) AABDCDCDZDADCBADCDADDCDHABCEABCFG $. $)
  $( Step 1 for lemma ~ 088ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  088ngA $p |- ( ( ( ( a | a ) | b ) | ( c | a ) ) | a ) = ( ( ( ( a | a ) | b ) | ( c | a ) ) | ( ( c | a ) | ( a | a ) ) ) $=
     ( tshef L26 eqcom shefeq2 ) ACADZAADZDZIBDHDJACAEFG $.
  $( Step 2 for lemma ~ 088ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  088ngB $p |- ( ( ( ( a | a ) | b ) | ( c | a ) ) | ( ( c | a ) | ( a | a ) ) ) = ( c | a ) $=
     ( tshef L32 ) AADBCADE $.
$( Prover9 step 88={para(60(a,1),77(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  088ng_ $p |- ( ( ( ( a | a ) | b ) | ( c | a ) ) | a ) = ( c | a ) $=
     ( tshef 088ngA 088ngB eqtr ) AADZBDCADZDZADJIHDDIABCEABCFG $.
  $( Step 1 for lemma ~ 211ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  211ngA $p |- ( ( ( ( ( a | a ) | b ) | c ) | c ) | a ) = ( ( ( ( a | a ) | ( ( ( ( a | a ) | b ) | c ) | c ) ) | ( a | a ) ) | a ) $=
     ( tshef L58 eqcom shefeq1 ) AADZBDCDCDZHIDHDZAJIHBCEFG $.
  $( Step 2 for lemma ~ 211ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  211ngB $p |- ( ( ( ( a | a ) | ( ( ( ( a | a ) | b ) | c ) | c ) ) | ( a | a ) ) | a ) = ( a | a ) $=
     ( tshef 088ng_ ) AAADBDCDCDAE $.
$( Prover9 step 211={para(210(a,1),88(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  211ng_ $p |- ( ( ( ( ( a | a ) | b ) | c ) | c ) | a ) = ( a | a ) $=
     ( tshef 211ngA 211ngB eqtr ) AADZBDCDCDZADHIDHDADHABCEABCFG $.
  $( Step 1 for lemma ~ 180ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  180ngA $p |- ( ( ( ( a | b ) | c ) | b ) | ( ( d | a ) | b ) ) = ( ( ( ( b | a ) | c ) | b ) | ( ( d | a ) | b ) ) $=
     ( tshef L36 shefeq111 ) ABEBAECBDAEBEABFG $.
  $( Step 2 for lemma ~ 180ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  180ngB $p |- ( ( ( ( b | a ) | c ) | b ) | ( ( d | a ) | b ) ) = b $=
     ( L52 ) BACDE $.
$( Prover9 step 180={para(104(a,1),179(a,1,1,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  180ng_ $p |- ( ( ( ( a | b ) | c ) | b ) | ( ( d | a ) | b ) ) = b $=
     ( tshef 180ngA 180ngB eqtr ) ABECEBEDAEBEZEBAECEBEIEBABCDFABCDGH $.
  $( Step 1 for lemma ~ L59 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  182ngA $p |- ( ( ( a | b ) | c ) | ( ( ( b | c ) | d ) | c ) ) = ( ( ( ( b | c ) | d ) | c ) | ( ( a | b ) | c ) ) $=
     ( tshef L36 ) ABECEBCEDECEF $.
  $( Step 2 for lemma ~ L59 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  182ngB $p |- ( ( ( ( b | c ) | d ) | c ) | ( ( a | b ) | c ) ) = c $=
     ( 180ng_ ) BCDAE $.
$( Prover9 step 182={para(180(a,1),104(a,1)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L59 $p |- ( ( ( a | b ) | c ) | ( ( ( b | c ) | d ) | c ) ) = c $=
     ( tshef 182ngA 182ngB eqtr ) ABECEZBCEDECEZEJIECABCDFABCDGH $.
  $( Step 1 for lemma ~ 212ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  212ngA $p |- ( ( a | ( ( ( b | a ) | c ) | a ) ) | b ) = ( ( ( ( ( b | b ) | a ) | ( ( ( b | a ) | c ) | a ) ) | ( ( ( b | a ) | c ) | a ) ) | b ) $=
     ( tshef L59 eqcom shefeq11 ) ABBDADBADCDADZDZHBIABBACEFG $.
  $( Step 2 for lemma ~ 212ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  212ngB $p |- ( ( ( ( ( b | b ) | a ) | ( ( ( b | a ) | c ) | a ) ) | ( ( ( b | a ) | c ) | a ) ) | b ) = ( b | b ) $=
     ( tshef 211ng_ ) BABADCDADE $.
$( Prover9 step 212={para(182(a,1),211(a,1,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  212ng_ $p |- ( ( a | ( ( ( b | a ) | c ) | a ) ) | b ) = ( b | b ) $=
     ( tshef 212ngA 212ngB eqtr ) ABADCDADZDBDBBDZADHDHDBDIABCEABCFG $.
  $( Step 1 for lemma ~ 213ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  213ngA $p |- ( ( a | ( ( ( a | b ) | c ) | a ) ) | b ) = ( ( a | ( ( ( b | a ) | c ) | a ) ) | b ) $=
     ( tshef L36 shefeq1211 ) ABDBADCAABABEF $.
  $( Step 2 for lemma ~ 213ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  213ngB $p |- ( ( a | ( ( ( b | a ) | c ) | a ) ) | b ) = ( b | b ) $=
     ( 212ng_ ) ABCD $.
$( Prover9 step 213={para(104(a,1),212(a,1,1,2,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  213ng_ $p |- ( ( a | ( ( ( a | b ) | c ) | a ) ) | b ) = ( b | b ) $=
     ( tshef 213ngA 213ngB eqtr ) AABDCDADDBDABADCDADDBDBBDABCEABCFG $.
  $( Step 1 for lemma ~ L60 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  214ngA $p |- ( ( ( ( ( a | b ) | c ) | a ) | a ) | b ) = ( ( a | ( ( ( a | b ) | c ) | a ) ) | b ) $=
     ( tshef L36 shefeq1 ) ABDCDADZADAGDBGAEF $.
  $( Step 2 for lemma ~ L60 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  214ngB $p |- ( ( a | ( ( ( a | b ) | c ) | a ) ) | b ) = ( b | b ) $=
     ( 213ng_ ) ABCD $.
$( Prover9 step 214={para(104(a,1),213(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L60 $p |- ( ( ( ( ( a | b ) | c ) | a ) | a ) | b ) = ( b | b ) $=
     ( tshef 214ngA 214ngB eqtr ) ABDCDADZADBDAHDBDBBDABCEABCFG $.
  $( Step 1 for lemma ~ 127ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  127ngA $p |- ( a | ( b | ( ( b | c ) | a ) ) ) = ( ( ( b | a ) | ( ( b | c ) | a ) ) | ( b | ( ( b | c ) | a ) ) ) $=
     ( tshef L48 eqcom shefeq1 ) ABADBCDADZDZBHDIABACEFG $.
  $( Step 2 for lemma ~ 127ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  127ngB $p |- ( ( ( b | a ) | ( ( b | c ) | a ) ) | ( b | ( ( b | c ) | a ) ) ) = ( ( b | c ) | a ) $=
     ( tshef L35 ) BABCDADE $.
$( Prover9 step 127={para(117(a,1),99(a,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  127ng_ $p |- ( a | ( b | ( ( b | c ) | a ) ) ) = ( ( b | c ) | a ) $=
     ( tshef 127ngA 127ngB eqtr ) ABBCDADZDZDBADHDIDHABCEABCFG $.
  $( Step 1 for lemma ~ L61 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  181ngA $p |- ( ( ( ( ( a | b ) | c ) | a ) | b ) | a ) = ( a | ( ( ( ( a | b ) | c ) | a ) | ( ( ( ( ( a | b ) | c ) | a ) | b ) | a ) ) ) $=
     ( tshef 127ng_ eqcom ) AABDCDADZGBDADZDDHAGBEF $.
  $( Step 2 for lemma ~ L61 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  181ngB $p |- ( a | ( ( ( ( a | b ) | c ) | a ) | ( ( ( ( ( a | b ) | c ) | a ) | b ) | a ) ) ) = ( a | a ) $=
     ( tshef L52 shefeq2 ) ABDCDADZGBDADDAAABCGEF $.
$( Prover9 step 181={para(179(a,1),127(a,1,2)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L61 $p |- ( ( ( ( ( a | b ) | c ) | a ) | b ) | a ) = ( a | a ) $=
     ( tshef L35 eqcom L48 shefeq1 L52 shefeq2 eq3tr ) ABDCDADZBDADZLADMDZLMDZDZAO
     DAADPMLAMEFNAOLABGHOAAABCLIJK $.
     $( ( tshef 181ngA 181ngB eqtr ) ABDCDADZBDADZAHIDDAADABCEABCFG $. $)
  $( Step 1 for lemma ~ 123ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  123ngA $p |- ( ( ( ( a | b ) | c ) | b ) | c ) = ( ( ( ( a | b ) | c ) | b ) | ( ( ( a | b ) | c ) | ( c | b ) ) ) $=
     ( tshef L33 eqcom shefeq2 ) CABDCDZCBDDZHBDICABCEFG $.
  $( Step 2 for lemma ~ 123ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  123ngB $p |- ( ( ( ( a | b ) | c ) | b ) | ( ( ( a | b ) | c ) | ( c | b ) ) ) = ( ( a | b ) | c ) $=
     ( tshef L38 ) ABDCDBCE $.
$( Prover9 step 123={para(84(a,1),113(a,1,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  123ng_ $p |- ( ( ( ( a | b ) | c ) | b ) | c ) = ( ( a | b ) | c ) $=
     ( tshef 123ngA 123ngB eqtr ) ABDCDZBDZCDIHCBDDDHABCEABCFG $.
  $( Step 1 for lemma ~ 184ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  184ngA $p |- ( ( ( ( a | b ) | c ) | a ) | b ) = ( ( ( ( ( ( a | b ) | c ) | a ) | b ) | a ) | b ) $=
     ( tshef 123ng_ eqcom ) ABDCDZADBDZADBDHGABEF $.
  $( Step 2 for lemma ~ 184ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  184ngB $p |- ( ( ( ( ( ( a | b ) | c ) | a ) | b ) | a ) | b ) = ( ( a | a ) | b ) $=
     ( tshef L61 shefeq1 ) ABDCDADBDADAADBABCEF $.
$( Prover9 step 184={para(181(a,1),123(a,1,1)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  184ng_ $p |- ( ( ( ( a | b ) | c ) | a ) | b ) = ( ( a | a ) | b ) $=
     ( tshef 184ngA 184ngB eqtr ) ABDCDADBDZHADBDAADBDABCEABCFG $.
  $( Step 1 for lemma ~ L62 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  168ngA $p |- ( ( a | b ) | b ) = ( b | ( b | a ) ) $=
     ( L37 ) ABBC $.
  $( Step 2 for lemma ~ L62 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  168ngB $p |- ( b | ( b | a ) ) = ( ( a | a ) | b ) $=
     ( tshef L50 eqcom ) AACBCBBACCABDE $.
$( Prover9 step 168={para(163(a,2),162(a,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L62 $p |- ( ( a | b ) | b ) = ( ( a | a ) | b ) $=
     ( tshef 168ngA 168ngB eqtr ) ABCBCBBACCAACBCABDABEF $.
  $( Step 1 for lemma ~ 186ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  186ngA $p |- ( ( ( ( ( a | b ) | b ) | c ) | ( a | a ) ) | b ) = ( ( ( ( ( a | a ) | b ) | c ) | ( a | a ) ) | b ) $=
     ( tshef L62 shefeq111 ) ABDBDAADZBDCGBABEF $.
  $( Step 2 for lemma ~ 186ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  186ngB $p |- ( ( ( ( ( a | a ) | b ) | c ) | ( a | a ) ) | b ) = ( ( ( a | a ) | ( a | a ) ) | b ) $=
     ( tshef 184ng_ ) AADBCE $.
$( Prover9 step 186={para(168(a,2),184(a,1,1,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  186ng_ $p |- ( ( ( ( ( a | b ) | b ) | c ) | ( a | a ) ) | b ) = ( ( ( a | a ) | ( a | a ) ) | b ) $=
     ( tshef 186ngA 186ngB eqtr ) ABDBDCDAADZDBDHBDCDHDBDHHDBDABCEABCFG $.
  $( Step 1 for lemma ~ 194ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  194ngA $p |- ( ( ( ( ( a | b ) | b ) | c ) | ( a | a ) ) | b ) = ( ( ( a | a ) | ( a | a ) ) | b ) $=
     ( 186ng_ ) ABCD $.
  $( Step 2 for lemma ~ 194ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  194ngB $p |- ( ( ( a | a ) | ( a | a ) ) | b ) = ( a | b ) $=
     ( tshef L47 shefeq1 ) AACZFCABAADE $.
$( Prover9 step 194={para(60(a,1),186(a,2,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  194ng_ $p |- ( ( ( ( ( a | b ) | b ) | c ) | ( a | a ) ) | b ) = ( a | b ) $=
     ( tshef 194ngA 194ngB eqtr ) ABDZBDCDAADZDBDIIDBDHABCEABFG $.
  $( Step 1 for lemma ~ 215ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  215ngA $p |- ( ( ( a | a ) | ( ( ( b | a ) | c ) | ( ( b | a ) | c ) ) ) | b ) = ( ( ( ( ( ( ( b | a ) | c ) | b ) | b ) | a ) | ( ( ( b | a ) | c ) | ( ( b | a ) | c ) ) ) | b ) $=
     ( tshef L60 eqcom shefeq11 ) AADZBADCDZBDBDADZIIDBJHBACEFG $.
  $( Step 2 for lemma ~ 215ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  215ngB $p |- ( ( ( ( ( ( ( b | a ) | c ) | b ) | b ) | a ) | ( ( ( b | a ) | c ) | ( ( b | a ) | c ) ) ) | b ) = ( ( ( b | a ) | c ) | b ) $=
     ( tshef 194ng_ ) BADCDBAE $.
$( Prover9 step 215={para(214(a,1),194(a,1,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  215ng_ $p |- ( ( ( a | a ) | ( ( ( b | a ) | c ) | ( ( b | a ) | c ) ) ) | b ) = ( ( ( b | a ) | c ) | b ) $=
     ( tshef 215ngA 215ngB eqtr ) AADBADCDZHDZDBDHBDZBDADIDBDJABCEABCFG $.
  $( Step 1 for lemma ~ L63 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  216ngA $p |- ( ( ( a | b ) | c ) | a ) = ( ( ( b | b ) | ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) ) | a ) $=
     ( tshef 215ng_ eqcom ) BBDABDCDZGDDADGADBACEF $.
  $( Step 2 for lemma ~ L63 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  216ngB $p |- ( ( ( b | b ) | ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) ) | a ) = ( ( ( b | b ) | c ) | a ) $=
     ( tshef L54 shefeq1 ) BBDZABDCDZHDDGCDABACEF $.
$( Prover9 step 216={para(195(a,1),215(a,1,1)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L63 $p |- ( ( ( a | b ) | c ) | a ) = ( ( ( b | b ) | c ) | a ) $=
     ( tshef L47 eqcom shefeq1 L61 L33 shefeq2 L38 L62 shefeq111 L60 shefeq11 L54
     eq7tr ) ABDCDZADZRRDZTDZADTADZBDZTDADZTDZADUEUDATDDZDUDSADZBDZTDADBBDZTDZA
     DUICDZADRUAAUARRREFGUAUEAUEUATABHFGAUFUEUFAUCTAIFJUDTAKUBUGBTAUGUBRALFMUHU
     ITAABCNOUJUKABACPGQ $.
     $( ( tshef 216ngA 216ngB eqtr ) ABDCDZADBBDZHHDDADICDADABCEABCFG $. $)
  $( Step 1 for lemma ~ 146ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  146ngA $p |- ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) = ( ( ( a | b ) | c ) | ( ( ( ( a | b ) | c ) | ( c | a ) ) | ( c | a ) ) ) $=
     ( tshef L42 eqcom ) ABDCDZGCADZDHDDGGDGHEF $.
  $( Step 2 for lemma ~ 146ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  146ngB $p |- ( ( ( a | b ) | c ) | ( ( ( ( a | b ) | c ) | ( c | a ) ) | ( c | a ) ) ) = ( ( ( a | b ) | c ) | ( c | ( c | a ) ) ) $=
     ( tshef L32 shefeq21 ) ABDCDZCADZDCHGABCEF $.
$( Prover9 step 146={para(77(a,1),137(a,1,2,1)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  146ng_ $p |- ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) = ( ( ( a | b ) | c ) | ( c | ( c | a ) ) ) $=
     ( tshef 146ngA 146ngB eqtr ) ABDCDZHDHHCADZDIDDHCIDDABCEABCFG $.
  $( Step 1 for lemma ~ 192ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  192ngA $p |- ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) = ( ( ( a | b ) | c ) | ( c | ( c | a ) ) ) $=
     ( 146ng_ ) ABCD $.
  $( Step 2 for lemma ~ 192ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  192ngB $p |- ( ( ( a | b ) | c ) | ( c | ( c | a ) ) ) = ( ( ( a | b ) | c ) | ( ( a | a ) | c ) ) $=
     ( tshef L50 eqcom shefeq2 ) CCADDZAADCDZABDCDIHACEFG $.
$( Prover9 step 192={para(163(a,2),146(a,2,2))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  192ng_ $p |- ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) = ( ( ( a | b ) | c ) | ( ( a | a ) | c ) ) $=
     ( tshef 192ngA 192ngB eqtr ) ABDCDZHDHCCADDDHAADCDDABCEABCFG $.
  $( Step 1 for lemma ~ L64 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  217ngA $p |- ( ( ( a | ( b | b ) ) | c ) | a ) = ( ( ( ( b | b ) | ( b | b ) ) | c ) | a ) $=
     ( tshef L63 ) ABBDCE $.
  $( Step 2 for lemma ~ L64 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  217ngB $p |- ( ( ( ( b | b ) | ( b | b ) ) | c ) | a ) = ( ( b | c ) | a ) $=
     ( tshef L47 shefeq11 ) BBDZGDBCABBEF $.
$( Prover9 step 217={para(60(a,1),216(a,2,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L64 $p |- ( ( ( a | ( b | b ) ) | c ) | a ) = ( ( b | c ) | a ) $=
     ( tshef 217ngA 217ngB eqtr ) ABBDZDCDADHHDCDADBCDADABCEABCFG $.
  $( Step 1 for lemma ~ 221ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  221ngA $p |- ( ( ( ( a | ( b | b ) ) | c ) | a ) | ( ( b | b ) | a ) ) = ( ( ( b | c ) | a ) | ( ( b | b ) | a ) ) $=
     ( tshef L64 shefeq1 ) ABBDZDCDADBCDADGADABCEF $.
  $( Step 2 for lemma ~ 221ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  221ngB $p |- ( ( ( b | c ) | a ) | ( ( b | b ) | a ) ) = ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) $=
     ( tshef 192ng_ eqcom ) BCDADZGDGBBDADDBCAEF $.
$( Prover9 step 221={para(217(a,2),192(a,2,1)),flip(a)}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  221ng_ $p |- ( ( ( ( a | ( b | b ) ) | c ) | a ) | ( ( b | b ) | a ) ) = ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) $=
     ( tshef 221ngA 221ngB eqtr ) ABBDZDCDADHADZDBCDADZIDJJDABCEABCFG $.
  $( Step 1 for lemma ~ 222ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  222ngA $p |- ( ( ( ( ( a | a ) | b ) | c ) | b ) | ( ( a | a ) | b ) ) = ( ( ( ( b | ( a | a ) ) | c ) | b ) | ( ( a | a ) | b ) ) $=
     ( tshef L36 shefeq111 ) AADZBDZBGDCBHGBEF $.
  $( Step 2 for lemma ~ 222ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  222ngB $p |- ( ( ( ( b | ( a | a ) ) | c ) | b ) | ( ( a | a ) | b ) ) = ( ( ( a | c ) | b ) | ( ( a | c ) | b ) ) $=
     ( 221ng_ ) BACD $.
$( Prover9 step 222={para(104(a,1),221(a,1,1,1,1))}. $)
  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  222ng_ $p |- ( ( ( ( ( a | a ) | b ) | c ) | b ) | ( ( a | a ) | b ) ) = ( ( ( a | c ) | b ) | ( ( a | c ) | b ) ) $=
     ( tshef 222ngA 222ngB eqtr ) AADZBDZCDBDIDBHDCDBDIDACDBDZJDABCEABCFG $.

$(
@( Step 1 for lemma ~ 219ng_ . @) 219ngA @p |- ( ( ( ( a | b ) | c ) | d ) | ( a | b ) ) = ( ( ( c | c ) | d ) | ( a | b ) ) @=
  ( tshef L63 ) BCEDAF @.
@( Step 2 for lemma ~ 219ng_ . @) 219ngB @p |- ( ( ( c | c ) | d ) | ( a | b ) ) = ( ( b | a ) | ( d | ( c | c ) ) ) @=
  ( tshef 167ng_ ) CDDEABF @.
@( [para(216(a,2),167(a,1))]. @) 219ng_ @p |- ( ( ( ( a | b ) | c ) | d ) | ( a | b ) ) = ( ( b | a ) | ( d | ( c | c ) ) ) @=
  ( tshef 219ngA 219ngB eqtr ) BCEZDEAEIEDDEZAEIECBEAJEEABCDFABCDGH @.
@( Step 1 for lemma ~ 223ng_ . @) 223ngA @p |- ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) = ( ( ( ( ( a | a ) | c ) | b ) | c ) | ( ( a | a ) | c ) ) @=
  ( tshef 222ng_ eqcom ) AADCDZBDCDGDABDCDZHDACBEF @.
@( Step 2 for lemma ~ 223ng_ . @) 223ngB @p |- ( ( ( ( ( a | a ) | c ) | b ) | c ) | ( ( a | a ) | c ) ) = ( ( c | ( a | a ) ) | ( c | ( b | b ) ) ) @=
  ( tshef 219ng_ ) CAADCBE @.
@( [para(222(a,1),219(a,1))]. @) 223ng_ @p |- ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) = ( ( c | ( a | a ) ) | ( c | ( b | b ) ) ) @=
  ( tshef 223ngA 223ngB eqtr ) ABDCDZHDAADZCDZBDCDJDCIDCBBDDDABCEABCFG @.
$)


  $( Step 1 for lemma ~ 224ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  224ngA $p |- ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) = ( ( ( ( ( a | a ) | c ) | b ) | c ) | ( ( a | a ) | c ) ) $=
     ( tshef 222ng_ eqcom ) AADCDZBDCDGDABDCDZHDACBEF $.
  $( Step 2 for lemma ~ 224ng_ .  (Contributed by NM and RV, 1-Oct-2021.) $)
  224ngB $p |- ( ( ( ( ( a | a ) | c ) | b ) | c ) | ( ( a | a ) | c ) ) = ( ( ( b | b ) | c ) | ( ( a | a ) | c ) ) $=
     ( tshef L63 ) AADCDBCE $.
  $( Not part of Prover9 proof.  (Contributed by NM and RV, 1-Oct-2021.) $)
  224ng_ $p |- ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) = ( ( ( b | b ) | c ) | ( ( a | a ) | c ) ) $=
     ( tshef 224ngA 224ngB eqtr ) ABDCDZHDAADCDZBDCDIDBBDCDIDABCEABCFG $.
  $( Step 1 for lemma ~ T3 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  225ngA $p |- ( ( ( a | a ) | b ) | ( ( c | c ) | b ) ) = ( ( ( c | a ) | b ) | ( ( c | a ) | b ) ) $=
     ( tshef 224ng_ eqcom ) CADBDZGDAADBDCCDBDDCABEF $.
  $( Step 2 for lemma ~ T3 .  (Contributed by NM and RV, 1-Oct-2021.) $)
  225ngB $p |- ( ( ( c | a ) | b ) | ( ( c | a ) | b ) ) = ( ( b | ( a | c ) ) | ( b | ( a | c ) ) ) $=
     ( tshef L37 shefeqeq ) CADBDZBACDDZGHCABEZIF $.


$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
           Third Sheffer axiom
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)

  $( Third Sheffer axiom for a Boolean algebra.  (Contributed by NM and RV,
     1-Oct-2021.) $)
  T3 $p |- ( ( ( a | a ) | b ) | ( ( c | c ) | b ) ) = ( ( b | ( a | c ) ) | ( b | ( a | c ) ) ) $=
     ( tshef L63 eqcom L36 shefeq111 L64 shefeq1 L50 shefeq2 L32 shefeq21 shefeqeq
     L42 L37 eq7tr ) AADBDCCDZBDZDZTADBDTDZBSDZADBDZTDCADBDZTDUEBBCDZDZDUEUEUFD
     ZUFDDUEUEDBACDDZUIDUBUATABEFTUCABTSBGHUDUETBCAIJTUGUECBKLBUHUFUEUHBCABMFNU
     EUFPUEUIUEUICABQZUJOR $.
     $( ( tshef 225ngA 225ngB eqtr ) AADBDCCDBDDCADBDZHDBACDDZIDABCEABCFG $. $)


$(
###############################################################################
       ORIGINAL NKS DERIVATION OF SHEFFER BA AXIOMS FROM WOLFRAM AXIOM
###############################################################################
$)

$(
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
         Lemmas nksL1 through nksL22 towards proving first Sheffer axiom
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
$)

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L01A $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) = ( ( ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) $=
  ( tshef ax-A eqcom shefeq1 ) AAABABZBZFGBZGBFHFBBBZGIGGFGCDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L01B $p |- ( ( ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) = ( ( ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) $=
  ( tshef ax-A shefeq1221 ) AABABZAEBZBZAEEGFBFAAACD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L01C $p |- ( ( ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) = ( ( ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) $=
  ( tshef ax-A shefeq12 ) AABABZAEBZBZAGFBFAAACD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L01D $p |- ( ( ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) = ( ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) $=
  ( tshef ax-A shefeq111 ) AABABZAEBZBAFAFAAACD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L01E $p |- ( ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) = a $=
  ( tshef ax-A ) AAAAABABBC $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL1 $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) = a $=
  ( tshef L01A L01B L01C L01D L01E eq5tr ) AAABABZBZJBIJBZJBZIKIBBBJBLKBJBLABJB
  AJBABJBAACADAEAFAGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L02A $p |- ( ( a | a ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) = ( ( a | a ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) ) $=
  ( tshef ax-A eqcom shefeq22 ) AAAABZABZBZABHBZHFIAAAGCDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L02B $p |- ( ( a | a ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) ) = ( ( a | a ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) $=
  ( tshef nksL1 eqcom shefeq2212 ) AAAABZABBZGBZGGGFHAACDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L02C $p |- ( ( a | a ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) = ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) $=
  ( tshef nksL1 eqcom shefeqeq shefeq1 ) AABZAGABBZHBZIBHHIBHBBAIAIIAACDZJEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L02D $p |- ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) $=
  ( tshef ax-A ) AAABABBZDBDDC $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L02E $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) = a $=
  ( nksL1 ) AB $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL2 $p |- ( ( a | a ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) = a $=
  ( tshef L02A L02B L02C L02D L02E eq5tr ) AABZAIABBZABZBIJKJBBBIJJJJBZBJBBZBLL
  BMBLAACADAEAFAGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L03A $p |- ( ( a | b ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( a | a ) ) ) ) = ( ( ( ( a | a ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) | b ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( a | a ) ) ) ) $=
  ( tshef nksL2 eqcom shefeq11 ) AAACZAGACCACCZBGGBCGCCHAADEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L03B $p |- ( ( ( ( a | a ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) | b ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( a | a ) ) ) ) = b $=
  ( tshef ax-A ) BAACZAEACCACD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL3 $p |- ( ( a | b ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( a | a ) ) ) ) = b $=
  ( tshef L03A L03B eqtr ) ABCAACZGBCGCCZCGAGACCACCBCHCBABDABEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L04A $p |- ( ( ( a | ( ( a | b ) | a ) ) | d ) | ( b | ( ( b | d ) | b ) ) ) = ( ( ( a | ( ( a | b ) | a ) ) | d ) | ( b | ( ( b | d ) | ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) ) ) $=
  ( tshef ax-A eqcom shefeq222 ) BACEBEAABEAEEZEZBDEBIDEJBBACFGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L04B $p |- ( ( ( a | ( ( a | b ) | a ) ) | d ) | ( b | ( ( b | d ) | ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) ) ) = ( ( ( a | ( ( a | b ) | a ) ) | d ) | ( b | ( ( ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) | d ) | ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) ) ) $=
  ( tshef ax-A eqcom shefeq2211 ) BACEBEAABEAEEZEZDJBIDEJBBACFGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L04C $p |- ( ( ( a | ( ( a | b ) | a ) ) | d ) | ( b | ( ( ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) | d ) | ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) ) ) = ( ( ( a | ( ( a | b ) | a ) ) | d ) | ( ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) | ( ( ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) | d ) | ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) ) ) $=
  ( tshef ax-A eqcom shefeq21 ) BACEBEAABEAEEZEZJDEJEIDEJBBACFGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L04D $p |- ( ( ( a | ( ( a | b ) | a ) ) | d ) | ( ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) | ( ( ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) | d ) | ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) ) ) = ( ( ( ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) | ( ( ( ( a | c ) | b ) | ( ( a | c ) | b ) ) | ( ( ( ( ( a | c ) | b ) | ( ( a | c ) | b ) ) | ( a | ( ( a | b ) | a ) ) ) | ( ( ( a | c ) | b ) | ( ( a | c ) | b ) ) ) ) ) | d ) | ( ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) | ( ( ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) | d ) | ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) ) ) $=
  ( tshef nksL3 eqcom shefeq11 ) AABEAEEZACEBEZIEZJJEZLIELEEEZDKKDEKEEMIJIFGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L04E $p |- ( ( ( ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) | ( ( ( ( a | c ) | b ) | ( ( a | c ) | b ) ) | ( ( ( ( ( a | c ) | b ) | ( ( a | c ) | b ) ) | ( a | ( ( a | b ) | a ) ) ) | ( ( ( a | c ) | b ) | ( ( a | c ) | b ) ) ) ) ) | d ) | ( ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) | ( ( ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) | d ) | ( ( ( a | c ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) ) ) = d $=
  ( tshef ax-A ) DACEBEZAABEAEEZEGGEZIHEIEEF $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL4 $p |- ( ( ( a | ( ( a | b ) | a ) ) | d ) | ( b | ( ( b | d ) | b ) ) ) = d $=
  ( wvf tshef L04A L04B L04C L04D L04E eq5tr ) AABEAEEZCEZBBCEZBEEEMBNADEBEZLEZ
  EEEMBPCEPEZEEMPQEZEPOOEZSLESEEECERECABDCFABDCGABDCHABDCIABDCJK $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L05A $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) ) $=
  ( tshef nksL4 eqcom shefeq22 ) AAAABABBZABFBZFFGAAAACDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L05B $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) ) = ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) ) $=
  ( tshef ax-A eqcom shefeq1 ) AAABABZBZFFGBFBZBZGBIBZGGABGBBJGGFHCDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L05C $p |- ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) ) = ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) ) $=
  ( tshef ax-A shefeq1221 ) AABABZAEBZBZAEEEGEBBFBFFABFBBAAACD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L05D $p |- ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) ) = ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | a ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) ) $=
  ( tshef ax-A shefeq12 ) AABABZAEBZBZAEGEBBFBFFABFBBAAACD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L05E $p |- ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | a ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) ) = ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) ) ) | a ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) ) $=
  ( tshef ax-A eqcom shefeq112 ) AAABABZBZFFGBFBZBZGBIBZIAGGABGBBJGGFHCDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L05F $p |- ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) ) ) | a ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) ) ) = a $=
  ( tshef nksL4 ) AABABZDADBZBDBBEAC $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL5 $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) = a $=
  ( tshef L05A L05B L05C L05D L05E L05F eq6tr ) AAABABZBZKABZBKKLKBBZBJJKBZJBBZ
  KBZOBZMBPNBMBPABMBOQBABMBAACADAEAFAGAHI $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L06A $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) $=
  ( tshef nksL1 eqcom shefeq21 ) AAAABABBZFBZFFGAACDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L06B $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) = ( ( ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) $=
  ( tshef ax-A eqcom ) AAABABBZEABBZEBEEEBEBBZBFFGBFBBBGGFECD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L06C $p |- ( ( ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) $=
  ( tshef ax-A shefeq1 ) AAABABBZEABZBZEBEEEBEBBZBEGGHBGBBEEFCD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L06D $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) $=
  ( tshef nksL5 shefeq21 ) AAABABBZEABBZAFEEEBEBBBFBEACD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L06E $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) $=
  ( tshef nksL5 shefeq2211 ) AAABABBZEABBZAEEEBEBBFAEACD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L06F $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) $=
  ( tshef nksL1 shefeq221221 ) AAABABBZEBAEEAEEABBAEACD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L06G $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) $=
  ( tshef nksL1 shefeq221221 eqcom ) AAABABBZAAFFFBZFBBBFFABBZBBBFAAFAFBBBHBBBGAFFAHAFACDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L06H $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( ( ( ( a | ( ( a | a ) | a ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) $=
  ( tshef nksL4 eqcom shefeq2211 ) AAAABABBZABZFBZFFFBFBBFGBAFHAAAACDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L06I $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( ( ( ( a | ( ( a | a ) | a ) ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) $=
  ( tshef ax-A shefeq221 ) AAABABBZABZEBEEEBEBBBEEFBAEEEACD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  Note that penultimate step
     is same as 3 steps above it.  (Contributed by SW, 14-May-2002.) $)
  nksL6 $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) $=
  ( tshef L06A L06B L06C L06D L06E L06F L06G L06H L06I eq9tr ) AAABABBZAMBBZMMM
  BMBBZMMABZBZMBOBQQOBQBZBZBMSBMARBBMAAOBQBBBZMAANBQBBBTMAMQBBBMAPMBOBQBBBACADA
  EAFAGAHAIAJAKL $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L07A $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) $=
  ( nksL6 ) AB $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L07B $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) $=
  ( tshef nksL5 shefeq222 ) AAABABBZEABBAEAEACD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L07C $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | a ) ) ) $=
  ( tshef ax-A eqcom shefeq221 ) AAABZABZBZGHBFFHBFBBBZAAHIHHFACDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L07D $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | a ) ) ) $=
  ( tshef ax-A shefeq2211 ) AABZABZAFBZBAEEGBEBBAAGAAACD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L07E $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | a ) ) ) = ( ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | ( a | ( ( a | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | a ) ) ) $=
  ( tshef nksL3 eqcom shefeq1 ) AAABZABBZAGBFFGBFBBZBZAAHBABBIGAGCDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L07F $p |- ( ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | ( a | ( ( a | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | a ) ) ) = ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) $=
  ( tshef ax-A ) AABZDADABBZBDBBAEC $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL7 $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) $=
  ( tshef L07A L07B L07C L07D L07E L07F eq6tr ) AAABZABZBZALBZBLALLLABZBBBBLANB
  BLAKLBJJLBJBBZBABBBLAAOBABBZBMOBPBOACADAEAFAGAHI $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L08A $p |- ( ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) = ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) ) $=
  ( tshef nksL7 eqcom shefeqeq ) AABZFAFABBZBFBBZGAGBBZHIIHACDZJE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L08B $p |- ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) ) = ( ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) $=
  ( tshef nksL1 eqcom shefeq21 shefeqeq ) AAABABBZAGBBZGGGBZGBBZHJAIGGIAACDEZKF
  $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L08C $p |- ( ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) = ( a | ( ( a | a ) | a ) ) $=
  ( tshef nksL1 ) AAABABBC $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL8 $p |- ( ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) = ( a | ( ( a | a ) | a ) ) $=
  ( tshef L08A L08B L08C eq3tr ) AABZGAGABBZBGBBZIBHAHBBZJBHHHBHBBZKBHACADAEF
  $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L09A $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) $=
  ( tshef nksL1 eqcom shefeq21 ) AAAABABBZFBZFFGAACDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L09B $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) = ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef nksL8 eqcom ) AAABABBZEBZFEFEBBZBFBBZHBGECD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L09C $p |- ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) = ( ( a | ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef nksL1 shefeq1 shefeqeq ) AAABABBZFBZGFGFBBBGBZBZAHBZIJGAHACDZKE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL9 $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = ( ( a | ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef L09A L09B L09C eq3tr ) AAABABBZAGBBGGGBZGBBZHHIBHBZBZKBAJBZLBACADAEF
  $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L10A $p |- ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) $=
  ( tshef nksL7 eqcom ) AAABZABBZAFBBEEFBEBBACD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L10B $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = ( ( a | ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( nksL9 ) AB $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L10C $p |- ( ( a | ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) = ( ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef nksL1 shefeq211 shefeqeq ) AAAABABBZFBZFGFBBZBGBBZAAHBGBBZIJGAHGAACDZK
  E $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL10 $p |- ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) = ( ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef L10A L10B L10C eq3tr ) AABZGAGABBZBGBBHAHBBAHHBZHIHBBZBIBBZKBAAJBIBBZ
  LBACADAEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L11A $p |- ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) = ( ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( nksL10 ) AB $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L11B $p |- ( ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) = ( ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef nksL1 shefeq21221 shefeqeq ) AAAAABABBZFFBZFBBBGBBZAAFAFBBBGBBZHIGAFFA
  GAACDZJE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L11C $p |- ( ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) = ( ( a | ( ( a | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef nksL7 shefeq212 shefeqeq ) AAAAABZABBZAGBBZBGGBZBBZAAFFGBFBBZBIBBZJLHK
  AIAACDZME $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL11 $p |- ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) = ( ( a | ( ( a | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef L11A L11B L11C eq3tr ) AABZGAGABBZBGBBZAAHHHBZHBBBJBBZKBAAHAHBBBJBBZL
  BAAIBJBBZMBACADAEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L12A $p |- ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) = ( ( a | ( ( a | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( nksL11 ) AB $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L12B $p |- ( ( a | ( ( a | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) = ( ( a | ( ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef ax-A eqcom shefeq211 shefeqeq ) AAAABZGAGABZBZBGBBZBIIBZBBZAHIBZJBKBB
  ZLNAMJKAMAAAACDEZOF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L12C $p |- ( ( a | ( ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) = ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef ax-A shefeq21 shefeqeq ) AAABZABZAGBZBFFHBFBBBZHHBZBBZAHJBBZKLIHJAHFA
  CDZME $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L12D $p |- ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) = ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) $=
  ( tshef nksL1 shefeq22 shefeqeq ) AAAABABBZFFBZBBZAFABBZHIGAFAACDZJE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL12 $p |- ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) = ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) $=
  ( tshef L12A L12B L12C L12D eq4tr ) AABZHAHABZBZBHBBZAAKBJJBZBBZMBAIJBKBLBBZN
  BAJLBBZOBAJABBZPBACADAEAFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L13A $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) $=
  ( nksL7 ) AB $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L13B $p |- ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) = ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) $=
  ( nksL12 ) AB $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL13 $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) $=
  ( tshef L13A L13B eqtr ) AAABZABBZAGBBFFGBFBBAGABBZHBACADE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L14A $p |- ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) $=
  ( tshef nksL13 eqcom ) AAABABBZAEBBAEABBZFBACD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L14B $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) $=
  ( tshef nksL1 eqcom shefeq21 ) AAAABABBZFBZFFGAACDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L14C $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) = ( ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef ax-A eqcom ) AABABZEAEBZBEBBFBZFBFFFBFBBZBGGHBGBBBHHGFCD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L14D $p |- ( ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) = ( ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef ax-A eqcom shefeq1112 ) AAABABZBZFFGBFBZBZGBZIBZIGGGGBGBBZJJLBJBBKGGF
  HCDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L14E $p |- ( ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef nksL4 shefeq1 ) AABABZEAEBZBEBBZGFBZGBBFBFFFBFBBZBFHHIBHBBGFFCD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L14F $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef nksL4 shefeq221 ) AABABZEAEBZBEBBFBZFFFBFBBBFGGFEFFCD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L14G $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef ax-A shefeq21121 ) AABABZAEBZBZAEEFFEGEBBFBBFAAACD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L14H $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef ax-A shefeq211 ) AABABZAEBZBZAFFEGEBBFBBFAAACD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L14I $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( ( a | a ) | a ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef ax-A shefeq222121 ) AABABZAEBZBAEEFFAFBFAAACD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL14 $p |- ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef L14A L14B L14C L14D L14E L14F L14G L14H L14I eq9tr ) AAAABABZBZABBZOB
  NANBZBNNNBNBBZMMNBZMBBZNBZNBQBTTQBTBBZBSTSBBNBQBUABNUABNTNTBZBBNRNBZUBBBNPNUC
  BBBNPUBBBACADAEAFAGAHAIAJAKL $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L15A $p |- ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( nksL14 ) AB $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L15B $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
  ( tshef ax-A shefeq2221 ) AABABZAEBZBAFFAFBFAAACD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L15C $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) $=
  ( tshef nksL13 shefeq22 ) AAABABBZAEBZBAEABBZGBFEACD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL15 $p |- ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) $=
  ( tshef L15A L15B L15C eq3tr ) AAAABABZBZABBZIBZHAHBZHGHBHBBBBHKHKBBBHKJBBACA
  DAEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L16A $p |- ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) $=
  ( nksL15 ) AB $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L16B $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) ) $=
  ( tshef nksL12 eqcom shefeq22 ) AAAABZABBZABBZHBZFFGBFBBZAGBGJIACDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L16C $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) $=
  ( tshef nksL3 shefeq2 ) AAAABZABBZBEEFBEBBBFFAFCD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL16 $p |- ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) $=
  ( tshef L16A L16B L16C eq3tr ) AAAABZABBZABBZIBZHAHBZJBBHKGGHBGBBBBHHBACADAEF
  $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L17A $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) $=
  ( nksL13 ) AB $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L17B $p |- ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) $=
  ( nksL16 ) AB $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L17C $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) = a $=
  ( nksL1 ) AB $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL17 $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = a $=
  ( tshef L17A L17B L17C eq3tr ) AAABABBZAGBBAGABBZHBGGBAACADAEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L18A $p |- ( a | ( ( a | a ) | a ) ) = ( ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) $=
  ( tshef nksL1 eqcom ) AAABABBZEEBEBBZFBEECD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L18B $p |- ( ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) = ( ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) $=
  ( tshef nksL16 eqcom ) AAABABBZEEEBEBBZEBBZGBFFBECD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L18C $p |- ( ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) = ( ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) $=
  ( tshef nksL1 shefeq2121 shefeqeq ) AAABABBZFFFBZFBBFBBZFFAFBBFBBZHIGAFFFFACDZ
  JE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L18D $p |- ( ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) = ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) ) $=
  ( tshef nksL17 shefeq21 shefeqeq ) AAABABBZFAFBBZFBBZGHGGAFFACDZIE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L18E $p |- ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) ) = ( a | a ) $=
  ( tshef nksL17 shefeqeq ) AAABABBZAEBBZAFAACZGD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL18 $p |- ( a | ( ( a | a ) | a ) ) = ( a | a ) $=
  ( tshef L18A L18B L18C L18D L18E eq5tr ) AAABZABBZJJJBJBBZKBJKJBBZLBJJAJBBZJB
  BZNBMMBIACADAEAFAGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L19A $p |- ( ( a | a ) | ( a | ( a | a ) ) ) = ( ( a | a ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) $=
  ( tshef nksL18 eqcom shefeq22 ) AABZAFABBZAFGFACDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L19B $p |- ( ( a | a ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) $=
  ( tshef nksL18 eqcom shefeq1 ) AABZAFABBZAGBGFACDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L19C $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = a $=
  ( nksL17 ) AB $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL19 $p |- ( ( a | a ) | ( a | ( a | a ) ) ) = a $=
  ( tshef L19A L19B L19C eq3tr ) AABZAGBBGAAGABBZBZBHIBAACADAEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L20A $p |- ( a | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) = ( a | ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | a ) ) ) $=
  ( tshef nksL18 eqcom shefeq22121 ) AABZAFABBZAAAAAGFACDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L20B $p |- ( a | ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | a ) ) ) = ( ( ( a | a ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | a ) ) ) $=
  ( tshef nksL2 eqcom shefeq1 ) AAABZAFABBABZBZAAGBABBHAACDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L20C $p |- ( ( ( a | a ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | a ) $=
  ( tshef ax-A ) AAABABBABAAC $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL20 $p |- ( a | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | a ) $=
  ( tshef L20A L20B L20C eq3tr ) AAAAABZABBABZBZBAAIABBZBGHBJBHACADAEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L21A $p |- ( a | ( a | a ) ) = ( a | ( a | ( ( a | a ) | a ) ) ) $=
  ( tshef nksL18 eqcom shefeq2 ) AABZAFABBZAGFACDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L21B $p |- ( a | ( a | ( ( a | a ) | a ) ) ) = ( a | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) $=
  ( tshef nksL18 eqcom shefeq221 ) AABZAFABBZAAAGFACDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L21C $p |- ( a | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | a ) $=
  ( nksL20 ) AB $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL21 $p |- ( a | ( a | a ) ) = ( ( a | ( ( a | a ) | a ) ) | a ) $=
  ( tshef L21A L21B L21C eq3tr ) AAABZBAAGABBZBAAHABZBBIACADAEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L22A $p |- ( ( a | a ) | ( a | a ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) $=
  ( tshef nksL18 eqcom shefeqeq ) AABZAFABBZFGGFACDZHE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L22B $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) = a $=
  ( nksL1 ) AB $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL22 $p |- ( ( a | a ) | ( a | a ) ) = a $=
  ( tshef L22A L22B eqtr ) AABZFBAFABBZGBAACADE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  T01A $p |- ( ( a | a ) | ( a | a ) ) = a $=
  ( nksL22 ) AB $.

$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
           First Sheffer axiom
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)

  $( Proof of Sheffer's first axiom for Boolaen Algebra.  (Contributed by SW,
     14-May-2002.) $)
  nksT1 $p |- ( ( a | a ) | ( a | a ) ) = a $=
  ( T01A ) AB $.

$(
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
         Lemmas nksL23 through nksL56 towards proving second Sheffer axiom
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
$)

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L23A $p |- ( ( a | a ) | a ) = ( ( a | ( ( a | a ) | a ) ) | a ) $=
  ( tshef nksL18 eqcom shefeq1 ) AABZAFABBZAGFACDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L23B $p |- ( ( a | ( ( a | a ) | a ) ) | a ) = ( a | ( a | a ) ) $=
  ( tshef nksL21 eqcom ) AAABZBAEABBABACD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL23 $p |- ( ( a | a ) | a ) = ( a | ( a | a ) ) $=
  ( tshef L23A L23B eqtr ) AABZABZAGBABAFBACADE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L24A $p |- ( ( ( a | b ) | a ) | ( a | a ) ) = ( ( ( a | b ) | a ) | ( a | ( ( a | a ) | a ) ) ) $=
  ( tshef nksL18 eqcom shefeq2 ) AACZAGACCZABCACHGADEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L24B $p |- ( ( ( a | b ) | a ) | ( a | ( ( a | a ) | a ) ) ) = a $=
  ( ax-A ) AABC $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL24 $p |- ( ( ( a | b ) | a ) | ( a | a ) ) = a $=
  ( tshef L24A L24B eqtr ) ABCACZAACZCGAHACCCAABDABEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L25A $p |- ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) = ( ( ( ( a | b ) | ( ( a | b ) | ( a | b ) ) ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | b ) ) ) ) $=
  ( tshef ax-A eqcom ) ABCZFFCZCAAGCACCZCFFHCFCCCHHFGDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L25B $p |- ( ( ( ( a | b ) | ( ( a | b ) | ( a | b ) ) ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | b ) ) ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | b ) ) ) ) $=
  ( tshef ax-A shefeq1 ) ABCZFFCZCAAGCACCZCGFFHCFCCGABDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L25C $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | b ) ) ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( a | b ) | ( a | b ) ) ) ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | b ) ) ) ) $=
  ( tshef nksL19 eqcom shefeq2211 ) ABCZGGCZGHCCZAAHCACCGGHIGGDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L25D $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( a | b ) | ( a | b ) ) ) ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | b ) ) ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( a | ( ( a | ( a | b ) ) | a ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | b ) ) ) ) $=
  ( tshef ax-A eqcom shefeq221121 ) ABCZGGCZAAGCACCCZHHAAHCACCGGHIGGABDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L25E $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( a | ( ( a | ( a | b ) ) | a ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | b ) ) ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( ( ( ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( a | ( ( a | ( a | b ) ) | a ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) | ( a | ( ( a | ( a | b ) ) | a ) ) ) | ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( a | ( ( a | ( a | b ) ) | a ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( a | ( ( a | ( a | b ) ) | a ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) | ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( a | ( ( a | ( a | b ) ) | a ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) ) ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | b ) ) ) ) $=
  ( tshef nksL24 eqcom shefeq2211 ) ABCZGCZHAAGCACCZCHCCZJICJCJJCCZAAHCACCGGHKJJI
  DEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L25F $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( ( ( ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( a | ( ( a | ( a | b ) ) | a ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) | ( a | ( ( a | ( a | b ) ) | a ) ) ) | ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( a | ( ( a | ( a | b ) ) | a ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( a | ( ( a | ( a | b ) ) | a ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) | ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( a | ( ( a | ( a | b ) ) | a ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) ) ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | b ) ) ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( ( a | ( ( a | ( a | b ) ) | a ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( a | ( ( a | ( a | b ) ) | a ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) | ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( a | ( ( a | ( a | b ) ) | a ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) ) ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | b ) ) ) ) $=
  ( tshef ax-A shefeq22111 ) ABCZFCZGAAFCACCZCGCZCZHCJCHJJCAAGCACCFFGHGIDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L25G $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( ( a | ( ( a | ( a | b ) ) | a ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( a | ( ( a | ( a | b ) ) | a ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) | ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( a | ( ( a | ( a | b ) ) | a ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) ) ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | b ) ) ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( ( a | ( ( a | ( a | b ) ) | a ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( a | b ) | ( a | b ) ) ) ) | ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( a | b ) | ( a | b ) ) ) ) ) ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | b ) ) ) ) $=
  ( tshef ax-A shefeq21 shefeqeq shefeq22112 ) ABCZHCZIAAHCACCZCZICCZLCIHICCZMC
  JAAICACCHHILMLMKHIIHABDEZNFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L25H $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( ( a | ( ( a | ( a | b ) ) | a ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( a | b ) | ( a | b ) ) ) ) | ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( a | b ) | ( a | b ) ) ) ) ) ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | b ) ) ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( ( a | ( ( a | ( a | b ) ) | a ) ) | ( ( a | b ) | ( a | b ) ) ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | b ) ) ) ) $=
  ( tshef nksL19 shefeqeq shefeq22112 ) ABCZGCZGHCCZICHAAGCACCAAHCACCGGHIGIGGDZJE
  F $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L25I $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( ( a | ( ( a | ( a | b ) ) | a ) ) | ( ( a | b ) | ( a | b ) ) ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | b ) ) ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) ) $=
  ( tshef ax-A shefeq221 ) AAABCZCACZCFFCZCAAHCACCCHFFHHAGDE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL25 $p |- ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) ) $=
  ( tshef L25A L25B L25C L25D L25E L25F L25G L25H L25I eq9tr ) AAABCZNCZCACCZNO
  CZPCNNPCNCCZCORCONOQCZPCNCCCONOOAANCACCZCOCCZPCNCCCONUATCUACUAUACZCPCNCCCONTU
  BCPCNCCCONTSSCCPCNCCCONONCCCONTOCPCNCCCABDABEABFABGABHABIABJABKABLM $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L26A $p |- ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) ) $=
  ( nksL25 ) ABC $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L26B $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) ) | ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) ) ) $=
  ( tshef ax-A eqcom shefeq2 ) ABCZGGCZGCZCZIJCHHJCHCCCZHKJJHGDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L26C $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) ) | ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) ) ) $=
  ( tshef ax-A shefeq21 ) ABCZFCZFCZFHCZCFGGICGCCGFFFDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L26D $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) ) | ( ( a | b ) | ( a | b ) ) ) ) ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) | ( a | b ) ) ) | ( ( a | b ) | ( ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) | ( a | b ) ) ) ) ) ) $=
  ( tshef nksL12 shefeq22 ) ABCZFCZGFGFCCZCGCCFHFCCZICFGFDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L26E $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) | ( a | b ) ) ) | ( ( a | b ) | ( ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) | ( a | b ) ) ) ) ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) ) ) ) $=
  ( tshef nksL16 shefeq22 ) ABCZFFFCZFCCZFCCZICHHCFGFDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L26F $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) ) ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( a | b ) ) ) $=
  ( tshef nksL1 shefeq22 ) ABCZFFCZFCCZHCFFGFDE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL26 $p |- ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( a | b ) ) ) $=
  ( tshef L26A L26B L26C L26D L26E L26F eq6tr ) AAABCZKCZCACCLKLKCZCZCZLMNCLOLC
  CZCCLKPCCLKKNKCCZQCCCLKNNCCCLLCABDABEABFABGABHABIJ $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L27A $p |- ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( a | b ) ) ) $=
  ( nksL26 ) ABC $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L27B $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( a | b ) ) ) = ( a | b ) $=
  ( tshef nksL22 ) ABCD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL27 $p |- ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) = ( a | b ) $=
  ( tshef L27A L27B eqtr ) AAABCZGCZCACCHHCGABDABEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L28A $p |- a = ( ( ( a | b ) | a ) | ( a | a ) ) $=
  ( tshef nksL24 eqcom ) ABCACAACCAABDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L28B $p |- ( ( ( a | b ) | a ) | ( a | a ) ) = ( ( ( a | b ) | a ) | ( ( ( ( a | b ) | a ) | ( ( ( ( a | b ) | a ) | ( a | a ) ) | ( ( ( a | b ) | a ) | ( a | a ) ) ) ) | ( ( a | b ) | a ) ) ) $=
  ( tshef nksL27 eqcom ) ABCACZFFAACZCZHCCFCCHFGDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L28C $p |- ( ( ( a | b ) | a ) | ( ( ( ( a | b ) | a ) | ( ( ( ( a | b ) | a ) | ( a | a ) ) | ( ( ( a | b ) | a ) | ( a | a ) ) ) ) | ( ( a | b ) | a ) ) ) = ( ( ( a | b ) | a ) | ( ( ( ( a | b ) | a ) | ( a | a ) ) | ( ( a | b ) | a ) ) ) $=
  ( tshef nksL24 shefeqeq shefeq212 ) ABCACZAACZCZICHGGGIAIAABDZJEF $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL28 $p |- a = ( ( ( a | b ) | a ) | ( ( ( ( a | b ) | a ) | ( a | a ) ) | ( ( a | b ) | a ) ) ) $=
  ( tshef L28A L28B L28C eq3tr ) AABCACZAACCZHHIICCHCCHIHCCABDABEABFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L29A $p |- ( ( ( a | b ) | a ) | ( a | ( ( a | b ) | a ) ) ) = ( ( ( a | b ) | a ) | ( ( ( ( a | b ) | a ) | ( a | a ) ) | ( ( a | b ) | a ) ) ) $=
  ( tshef nksL24 eqcom shefeq21 ) AABCACZAACCZGGHAABDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L29B $p |- ( ( ( a | b ) | a ) | ( ( ( ( a | b ) | a ) | ( a | a ) ) | ( ( a | b ) | a ) ) ) = a $=
  ( tshef nksL28 eqcom ) AABCACZFAACCFCCABDE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL29 $p |- ( ( ( a | b ) | a ) | ( a | ( ( a | b ) | a ) ) ) = a $=
  ( tshef L29A L29B eqtr ) ABCACZAGCCGGAACCGCCAABDABEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L30A $p |- ( ( a | b ) | ( a | a ) ) = ( ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) | ( a | a ) ) $=
  ( tshef nksL27 eqcom shefeq1 ) ABCZAAGGCCACCZAACHGABDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L30B $p |- ( ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) | ( a | a ) ) = ( ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) ) ) $=
  ( tshef nksL29 eqcom shefeqeq shefeq2 ) AACAABCZHCZCACZAJCZCZLCKALALLAAIDEZMFG
  $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L30C $p |- ( ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) ) ) = ( ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) ) ) $=
  ( tshef nksL29 eqcom shefeq21 shefeqeq shefeq2 ) AABCZICZCACZAKCZCZMCKMKCCZNCLM
  NMNAMKKMAAJDEFZOGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L30D $p |- ( ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) ) ) = ( ( ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) ) ) $=
  ( tshef ax-A eqcom shefeq1 ) AAABCZGCCACZCZHHICHCZCZICKCZKKCLIIHJDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L30E $p |- ( ( ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) ) ) = ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) $=
  ( tshef nksL24 ) AABCZECCACZFAFCZCFCCGD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L30F $p |- ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) = ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) $=
  ( tshef nksL29 shefeq21 ) AABCZFCZCACZAHCCAHHAGDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L30G $p |- ( ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) | ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) ) = a $=
  ( tshef nksL29 ) AABCZECD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL30 $p |- ( ( a | b ) | ( a | a ) ) = a $=
  ( tshef L30A L30B L30C L30D L30E L30F L30G eq7tr ) ABCZAACZCAALLCCACZCZMCONOC
  ZPCCONPNCCZQCZCQOCQCRCQPAABDABEABFABGABHABIABJK $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L31A $p |- ( b | ( ( a | b ) | ( a | b ) ) ) = ( ( ( a | b ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( a | a ) ) ) ) | ( ( a | b ) | ( a | b ) ) ) $=
  ( tshef nksL3 eqcom shefeq1 ) BABCZAACZHBCHCCCZGGCIBABDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L31B $p |- ( ( ( a | b ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( a | a ) ) ) ) | ( ( a | b ) | ( a | b ) ) ) = ( a | b ) $=
  ( tshef nksL30 ) ABCAACZEBCECCD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL31 $p |- ( b | ( ( a | b ) | ( a | b ) ) ) = ( a | b ) $=
  ( tshef L31A L31B eqtr ) BABCZGCZCGAACZIBCICCCHCGABDABEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L32A $p |- ( a | ( ( a | b ) | ( a | b ) ) ) = ( ( ( a | b ) | ( a | a ) ) | ( ( a | b ) | ( a | b ) ) ) $=
  ( tshef nksL30 eqcom shefeq1 ) AABCZAACCZGGCHAABDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L32B $p |- ( ( ( a | b ) | ( a | a ) ) | ( ( a | b ) | ( a | b ) ) ) = ( a | b ) $=
  ( tshef nksL30 ) ABCAACD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL32 $p |- ( a | ( ( a | b ) | ( a | b ) ) ) = ( a | b ) $=
  ( tshef L32A L32B eqtr ) AABCZGCZCGAACCHCGABDABEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L33A $p |- ( a | ( ( a | b ) | a ) ) = ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) $=
  ( tshef nksL32 eqcom shefeq21 ) ABCZAGGCCZAAHGABDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L33B $p |- ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) = ( a | b ) $=
  ( nksL27 ) ABC $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL33 $p |- ( a | ( ( a | b ) | a ) ) = ( a | b ) $=
  ( tshef L33A L33B eqtr ) AABCZACCAAGGCCACCGABDABEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L34A $p |- ( ( ( a | b ) | c ) | ( b | c ) ) = ( ( ( a | b ) | c ) | ( b | ( ( b | c ) | b ) ) ) $=
  ( tshef nksL33 eqcom shefeq2 ) BCDZBHBDDZABDCDIHBCEFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L34B $p |- ( ( ( a | b ) | c ) | ( b | ( ( b | c ) | b ) ) ) = ( ( ( a | ( ( a | b ) | a ) ) | c ) | ( b | ( ( b | c ) | b ) ) ) $=
  ( tshef nksL33 eqcom shefeq11 ) ABDZAHADDZCBBCDBDDIHABEFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L34C $p |- ( ( ( a | ( ( a | b ) | a ) ) | c ) | ( b | ( ( b | c ) | b ) ) ) = c $=
  ( nksL4 ) ABCD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL34 $p |- ( ( ( a | b ) | c ) | ( b | c ) ) = c $=
  ( tshef L34A L34B L34C eq3tr ) ABDZCDZBCDZDJBKBDDZDAIADDCDLDCABCEABCFABCGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L35A $p |- ( b | a ) = ( a | ( ( b | a ) | ( b | a ) ) ) $=
  ( tshef nksL31 eqcom ) ABACZFCCFBADE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L35B $p |- ( a | ( ( b | a ) | ( b | a ) ) ) = ( a | ( ( a | ( ( b | a ) | ( b | a ) ) ) | a ) ) $=
  ( tshef nksL33 eqcom ) AABACZFCZCZACCHAGDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L35C $p |- ( a | ( ( a | ( ( b | a ) | ( b | a ) ) ) | a ) ) = ( a | ( ( b | a ) | a ) ) $=
  ( tshef nksL31 shefeq21 ) ABACZFCCFAABADE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL35 $p |- ( b | a ) = ( a | ( ( b | a ) | a ) ) $=
  ( tshef L35A L35B L35C eq3tr ) BACZAHHCCZAIACCAHACCABDABEABFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L36A $p |- ( b | ( b | ( a | b ) ) ) = ( b | ( b | ( a | ( ( a | b ) | a ) ) ) ) $=
  ( tshef nksL33 eqcom shefeq22 ) ABCZAGACCZBBHGABDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L36B $p |- ( b | ( b | ( a | ( ( a | b ) | a ) ) ) ) = ( b | ( b | ( ( b | ( a | ( ( a | b ) | a ) ) ) | b ) ) ) $=
  ( tshef nksL33 eqcom shefeq2 ) BAABCACCZCZBHBCCZBIHBGDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L36C $p |- ( b | ( b | ( ( b | ( a | ( ( a | b ) | a ) ) ) | b ) ) ) = ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) | ( b | ( ( b | ( a | ( ( a | b ) | a ) ) ) | b ) ) ) $=
  ( tshef ax-A eqcom shefeq1 ) BAABCACZCZBCHCZBBHCBCCIBBAGDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L36D $p |- ( ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) | ( b | ( ( b | ( a | ( ( a | b ) | a ) ) ) | b ) ) ) = ( ( ( ( a | ( ( a | b ) | a ) ) | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) | ( a | ( ( a | b ) | a ) ) ) | ( b | ( ( b | ( a | ( ( a | b ) | a ) ) ) | b ) ) ) $=
  ( tshef nksL33 eqcom shefeq11 ) AABCACCZBCZGHGCCZGBBGCBCCIHGBDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L36E $p |- ( ( ( ( a | ( ( a | b ) | a ) ) | ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( a | ( ( a | b ) | a ) ) ) ) | ( a | ( ( a | b ) | a ) ) ) | ( b | ( ( b | ( a | ( ( a | b ) | a ) ) ) | b ) ) ) = ( a | ( ( a | b ) | a ) ) $=
  ( tshef nksL4 ) AABCACCZBED $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L36F $p |- ( a | ( ( a | b ) | a ) ) = ( a | b ) $=
  ( nksL33 ) ABC $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL36 $p |- ( b | ( b | ( a | b ) ) ) = ( a | b ) $=
  ( tshef L36A L36B L36C L36D L36E L36F eq6tr ) BBABCZCCBBAKACCZCZCBBMBCCZCLBCL
  CZNCLOCLCNCLKABDABEABFABGABHABIJ $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L37A $p |- ( ( a | b ) | a ) = ( a | ( a | ( ( a | b ) | a ) ) ) $=
  ( tshef nksL36 eqcom ) AAABCZACZCCGFADE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L37B $p |- ( a | ( a | ( ( a | b ) | a ) ) ) = ( a | ( a | b ) ) $=
  ( tshef nksL33 shefeq2 ) AABCZACCFAABDE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL37 $p |- ( ( a | b ) | a ) = ( a | ( a | b ) ) $=
  ( tshef L37A L37B eqtr ) ABCZACZAAHCCAGCABDABEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L38A $p |- ( ( b | a ) | a ) = ( a | ( a | ( ( b | a ) | a ) ) ) $=
  ( tshef nksL36 eqcom ) AABACZACZCCGFADE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L38B $p |- ( a | ( a | ( ( b | a ) | a ) ) ) = ( a | ( b | a ) ) $=
  ( tshef nksL35 eqcom shefeq2 ) ABACZACCZGAGHABDEF $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL38 $p |- ( ( b | a ) | a ) = ( a | ( b | a ) ) $=
  ( tshef L38A L38B eqtr ) BACZACZAAHCCAGCABDABEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L39A $p |- ( ( b | b ) | ( b | ( a | b ) ) ) = ( ( b | b ) | ( ( a | b ) | b ) ) $=
  ( tshef nksL38 eqcom shefeq2 ) BABCZCZGBCZBBCIHBADEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L39B $p |- ( ( b | b ) | ( ( a | b ) | b ) ) = ( ( b | b ) | ( ( a | b ) | ( ( ( a | b ) | b ) | ( a | b ) ) ) ) $=
  ( tshef nksL33 eqcom shefeq2 ) ABCZBCZGHGCCZBBCIHGBDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L39C $p |- ( ( b | b ) | ( ( a | b ) | ( ( ( a | b ) | b ) | ( a | b ) ) ) ) = ( ( b | b ) | ( ( a | b ) | ( ( ( a | b ) | ( ( a | b ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( a | a ) ) ) ) ) | ( a | b ) ) ) ) $=
  ( tshef nksL3 eqcom shefeq2212 ) BABCZAACZHBCHCCCZGGGBBCIBABDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L39D $p |- ( ( b | b ) | ( ( a | b ) | ( ( ( a | b ) | ( ( a | b ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( a | a ) ) ) ) ) | ( a | b ) ) ) ) = ( ( ( ( a | b ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( a | a ) ) ) ) | ( ( a | b ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( a | a ) ) ) ) ) | ( ( a | b ) | ( ( ( a | b ) | ( ( a | b ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( a | a ) ) ) ) ) | ( a | b ) ) ) ) $=
  ( tshef nksL3 eqcom shefeqeq shefeq1 ) BBCABCZAACZIBCICCCZJCHHJCHCCBJBJJBABDEZ
  KFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L39E $p |- ( ( ( ( a | b ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( a | a ) ) ) ) | ( ( a | b ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( a | a ) ) ) ) ) | ( ( a | b ) | ( ( ( a | b ) | ( ( a | b ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( a | a ) ) ) ) ) | ( a | b ) ) ) ) = ( ( a | b ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( a | a ) ) ) ) $=
  ( tshef ax-A ) ABCZAACZFBCFCCZCEGD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L39F $p |- ( ( a | b ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( a | a ) ) ) ) = b $=
  ( nksL3 ) ABC $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL39 $p |- ( ( b | b ) | ( b | ( a | b ) ) ) = b $=
  ( tshef L39A L39B L39C L39D L39E L39F eq6tr ) BBCZBABCZCCKLBCZCKLMLCCCKLLLAAC
  ZNBCNCCCZCLCCZCOOCPCOBABDABEABFABGABHABIJ $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L40A $p |- a = ( ( a | a ) | ( a | ( ( b | a ) | a ) ) ) $=
  ( tshef nksL39 eqcom ) AACABACZACCCAFADE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L40B $p |- ( ( a | a ) | ( a | ( ( b | a ) | a ) ) ) = ( ( a | a ) | ( a | ( a | ( b | a ) ) ) ) $=
  ( tshef nksL38 shefeq22 ) BACZACAFCAAACABDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L40C $p |- ( ( a | a ) | ( a | ( a | ( b | a ) ) ) ) = ( ( a | a ) | ( b | a ) ) $=
  ( tshef nksL36 shefeq2 ) AABACZCCFAACBADE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL40 $p |- a = ( ( a | a ) | ( b | a ) ) $=
  ( tshef L40A L40B L40C eq3tr ) AAACZABACZACCCHAAICCCHICABDABEABFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L41A $p |- a = ( ( a | a ) | ( a | ( ( a | b ) | a ) ) ) $=
  ( tshef nksL39 eqcom ) AACAABCZACCCAFADE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L41B $p |- ( ( a | a ) | ( a | ( ( a | b ) | a ) ) ) = ( ( a | a ) | ( a | b ) ) $=
  ( tshef nksL33 shefeq2 ) AABCZACCFAACABDE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL41 $p |- a = ( ( a | a ) | ( a | b ) ) $=
  ( tshef L41A L41B eqtr ) AAACZAABCZACCCGHCABDABEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L42A $p |- ( b | a ) = ( b | ( ( a | a ) | ( a | b ) ) ) $=
  ( tshef nksL41 shefeq2 ) AAACABCCBABDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L42B $p |- ( b | ( ( a | a ) | ( a | b ) ) ) = ( b | ( ( a | a ) | ( a | ( ( a | b ) | a ) ) ) ) $=
  ( tshef nksL33 eqcom shefeq22 ) ABCZAGACCZAACBHGABDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L42C $p |- ( b | ( ( a | a ) | ( a | ( ( a | b ) | a ) ) ) ) = ( b | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | b ) | a ) ) ) | ( a | a ) ) ) ) $=
  ( tshef nksL33 eqcom shefeq2 ) AACZAABCACCZCZGIGCCZBJIGHDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L42D $p |- ( b | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | b ) | a ) ) ) | ( a | a ) ) ) ) = ( ( ( ( a | a ) | b ) | ( a | ( ( a | b ) | a ) ) ) | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | b ) | a ) ) ) | ( a | a ) ) ) ) $=
  ( tshef ax-A eqcom shefeq1 ) BAACZBCAABCACCZCZGGHCGCCIBBAADEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L42E $p |- ( ( ( ( a | a ) | b ) | ( a | ( ( a | b ) | a ) ) ) | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | b ) | a ) ) ) | ( a | a ) ) ) ) = ( a | ( ( a | b ) | a ) ) $=
  ( tshef ax-A ) AABCACCAACBD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L42F $p |- ( a | ( ( a | b ) | a ) ) = ( a | b ) $=
  ( nksL33 ) ABC $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL42 $p |- ( b | a ) = ( a | b ) $=
  ( tshef L42A L42B L42C L42D L42E L42F eq6tr ) BACBAACZABCZCCBKALACCZCZCBKNKCC
  ZCKBCMCOCMLABDABEABFABGABHABIJ $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L43A $p |- ( ( a | c ) | ( ( a | b ) | c ) ) = ( ( ( a | b ) | c ) | ( a | c ) ) $=
  ( tshef nksL42 ) ABDCDACDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L43B $p |- ( ( ( a | b ) | c ) | ( a | c ) ) = ( ( ( a | b ) | c ) | ( a | ( ( a | c ) | a ) ) ) $=
  ( tshef nksL33 eqcom shefeq2 ) ACDZAHADDZABDCDIHACEFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L43C $p |- ( ( ( a | b ) | c ) | ( a | ( ( a | c ) | a ) ) ) = c $=
  ( ax-A ) CABD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL43 $p |- ( ( a | c ) | ( ( a | b ) | c ) ) = c $=
  ( tshef L43A L43B L43C eq3tr ) ACDZABDCDZDJIDJAIADDDCABCEABCFABCGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L44A $p |- ( ( b | c ) | ( ( a | b ) | c ) ) = ( ( ( a | b ) | c ) | ( b | c ) ) $=
  ( tshef nksL42 ) ABDCDBCDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L44B $p |- ( ( ( a | b ) | c ) | ( b | c ) ) = c $=
  ( nksL34 ) ABCD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL44 $p |- ( ( b | c ) | ( ( a | b ) | c ) ) = c $=
  ( tshef L44A L44B eqtr ) BCDZABDCDZDIHDCABCEABCFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L45A $p |- ( ( b | a ) | ( ( a | c ) | b ) ) = ( ( a | b ) | ( ( a | c ) | b ) ) $=
  ( tshef nksL42 shefeq1 ) BADABDACDBDABEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L45B $p |- ( ( a | b ) | ( ( a | c ) | b ) ) = b $=
  ( nksL43 ) ACBD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL45 $p |- ( ( b | a ) | ( ( a | c ) | b ) ) = b $=
  ( tshef L45A L45B eqtr ) BADACDBDZDABDHDBABCEABCFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L46A $p |- ( ( b | a ) | ( a | ( b | c ) ) ) = ( ( b | a ) | ( ( b | c ) | a ) ) $=
  ( tshef nksL42 shefeq2 ) ABCDZDGADBADGAEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L46B $p |- ( ( b | a ) | ( ( b | c ) | a ) ) = a $=
  ( nksL43 ) BCAD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL46 $p |- ( ( b | a ) | ( a | ( b | c ) ) ) = a $=
  ( tshef L46A L46B eqtr ) BADZABCDZDDHIADDAABCEABCFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L47A $p |- ( b | c ) = ( ( ( a | b ) | ( b | c ) ) | ( ( b | c ) | ( ( a | b ) | c ) ) ) $=
  ( tshef nksL46 eqcom ) ABDZBCDZDHGCDDDHHGCEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L47B $p |- ( ( ( a | b ) | ( b | c ) ) | ( ( b | c ) | ( ( a | b ) | c ) ) ) = ( ( ( a | b ) | ( b | c ) ) | c ) $=
  ( tshef nksL44 shefeq2 ) BCDZABDZCDDCHGDABCEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L47C $p |- ( ( ( a | b ) | ( b | c ) ) | c ) = ( c | ( ( a | b ) | ( b | c ) ) ) $=
  ( tshef nksL42 ) CABDBCDDE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL47 $p |- ( b | c ) = ( c | ( ( a | b ) | ( b | c ) ) ) $=
  ( tshef L47A L47B L47C eq3tr ) BCDZABDZIDZIJCDDDKCDCKDABCEABCFABCGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L48A $p |- ( a | b ) = ( ( ( a | b ) | ( c | a ) ) | ( ( ( c | a ) | b ) | ( a | b ) ) ) $=
  ( tshef nksL45 eqcom ) ABDZCADZDHBDGDDGHGBEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L48B $p |- ( ( ( a | b ) | ( c | a ) ) | ( ( ( c | a ) | b ) | ( a | b ) ) ) = ( ( ( a | b ) | ( c | a ) ) | ( ( a | b ) | ( ( c | a ) | b ) ) ) $=
  ( tshef nksL42 shefeq2 ) CADZBDZABDZDIHDIGDIHEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L48C $p |- ( ( ( a | b ) | ( c | a ) ) | ( ( a | b ) | ( ( c | a ) | b ) ) ) = ( ( ( a | b ) | ( c | a ) ) | b ) $=
  ( tshef nksL44 shefeq2 ) ABDZCADZBDDBGHDCABEF $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL48 $p |- ( a | b ) = ( ( ( a | b ) | ( c | a ) ) | b ) $=
  ( tshef L48A L48B L48C eq3tr ) ABDZICADZDZJBDZIDDKILDDKBDABCEABCFABCGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L49A $p |- ( b | ( ( a | b ) | ( c | a ) ) ) = ( ( ( a | b ) | ( c | a ) ) | b ) $=
  ( tshef nksL42 ) ABDCADDBE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L49B $p |- ( ( ( a | b ) | ( c | a ) ) | b ) = ( a | b ) $=
  ( tshef nksL48 eqcom ) ABDZGCADDBDABCEF $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL49 $p |- ( b | ( ( a | b ) | ( c | a ) ) ) = ( a | b ) $=
  ( tshef L49A L49B eqtr ) BABDZCADDZDIBDHABCEABCFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L50A $p |- ( ( a | b ) | c ) = ( ( a | ( ( a | b ) | c ) ) | ( ( a | c ) | ( ( a | b ) | c ) ) ) $=
  ( tshef nksL43 eqcom ) AABDCDZDACDGDDGACGEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L50B $p |- ( ( a | ( ( a | b ) | c ) ) | ( ( a | c ) | ( ( a | b ) | c ) ) ) = ( ( a | ( ( a | b ) | c ) ) | c ) $=
  ( tshef nksL43 shefeq2 ) ACDABDCDZDCAGDABCEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L50C $p |- ( ( a | ( ( a | b ) | c ) ) | c ) = ( c | ( a | ( ( a | b ) | c ) ) ) $=
  ( tshef nksL42 ) CAABDCDDE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL50 $p |- ( ( a | b ) | c ) = ( c | ( a | ( ( a | b ) | c ) ) ) $=
  ( tshef L50A L50B L50C eq3tr ) ABDCDZAIDZACDIDDJCDCJDABCEABCFABCGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L51A $p |- ( a | ( b | ( a | b ) ) ) = ( a | ( ( a | b ) | b ) ) $=
  ( tshef nksL42 shefeq2 ) BABCZCFBCAFBDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L51B $p |- ( a | ( ( a | b ) | b ) ) = ( ( ( a | b ) | b ) | a ) $=
  ( tshef nksL42 ) ABCBCAD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L51C $p |- ( ( ( a | b ) | b ) | a ) = ( a | ( ( a | b ) | ( ( ( a | b ) | b ) | a ) ) ) $=
  ( tshef nksL50 ) ABCBAD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L51D $p |- ( a | ( ( a | b ) | ( ( ( a | b ) | b ) | a ) ) ) = ( a | ( ( b | a ) | ( ( ( a | b ) | b ) | a ) ) ) $=
  ( tshef nksL42 shefeq21 ) ABCZBACFBCACABADE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L51E $p |- ( a | ( ( b | a ) | ( ( ( a | b ) | b ) | a ) ) ) = ( a | a ) $=
  ( tshef nksL44 shefeq2 ) BACABCZBCACCAAFBADE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL51 $p |- ( a | ( b | ( a | b ) ) ) = ( a | a ) $=
  ( tshef L51A L51B L51C L51D L51E eq5tr ) ABABCZCCAJBCZCKACZAJLCCABACLCCAACABD
  ABEABFABGABHI $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L52A $p |- ( ( b | a ) | ( a | b ) ) = ( ( a | b ) | ( b | ( ( b | a ) | ( a | b ) ) ) ) $=
  ( tshef nksL50 ) BAABCD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L52B $p |- ( ( a | b ) | ( b | ( ( b | a ) | ( a | b ) ) ) ) = ( ( a | b ) | ( a | b ) ) $=
  ( tshef nksL47 eqcom shefeq2 ) BBACABCZCCZGGGHBABDEF $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL52 $p |- ( ( b | a ) | ( a | b ) ) = ( ( a | b ) | ( a | b ) ) $=
  ( tshef L52A L52B eqtr ) BACABCZCZGBHCCGGCABDABEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L53A $p |- ( ( a | a ) | ( ( b | a ) | ( b | a ) ) ) = ( ( a | a ) | ( ( b | a ) | ( ( ( a | a ) | ( b | a ) ) | ( ( ( ( a | a ) | ( b | a ) ) | ( a | a ) ) | ( b | a ) ) ) ) ) $=
  ( tshef nksL44 eqcom shefeq22 ) BACZAACZGCZIHCGCCZGHJGIHGDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L53B $p |- ( ( a | a ) | ( ( b | a ) | ( ( ( a | a ) | ( b | a ) ) | ( ( ( ( a | a ) | ( b | a ) ) | ( a | a ) ) | ( b | a ) ) ) ) ) = ( ( a | a ) | ( ( ( ( a | a ) | ( b | a ) ) | ( a | a ) ) | ( b | a ) ) ) $=
  ( tshef nksL50 eqcom shefeq2 ) BACZAACZGCZIHCGCZCCZJHJKIHGDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L53C $p |- ( ( a | a ) | ( ( ( ( a | a ) | ( b | a ) ) | ( a | a ) ) | ( b | a ) ) ) = ( ( a | a ) | ( ( b | a ) | ( ( ( a | a ) | ( b | a ) ) | ( a | a ) ) ) ) $=
  ( tshef nksL42 shefeq2 ) AACZBACZCFCZGCGHCFGHDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L53D $p |- ( ( a | a ) | ( ( b | a ) | ( ( ( a | a ) | ( b | a ) ) | ( a | a ) ) ) ) = ( ( a | a ) | ( ( b | a ) | ( ( a | a ) | ( ( a | a ) | ( b | a ) ) ) ) ) $=
  ( tshef nksL37 shefeq22 ) AACZBACZCZFCFHCGFFGDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L53E $p |- ( ( a | a ) | ( ( b | a ) | ( ( a | a ) | ( ( a | a ) | ( b | a ) ) ) ) ) = ( ( a | a ) | ( ( b | a ) | ( ( a | a ) | a ) ) ) $=
  ( tshef nksL40 eqcom shefeq222 ) AACZBACZCZAGHGAIABDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L53F $p |- ( ( a | a ) | ( ( b | a ) | ( ( a | a ) | a ) ) ) = ( ( a | a ) | ( ( b | a ) | ( a | ( a | a ) ) ) ) $=
  ( tshef nksL23 shefeq22 ) AACZACAFCBACFADE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L53G $p |- ( ( a | a ) | ( ( b | a ) | ( a | ( a | a ) ) ) ) = ( a | ( a | a ) ) $=
  ( tshef nksL47 eqcom ) AAACZCZFBACGCCBAFDE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL53 $p |- ( ( a | a ) | ( ( b | a ) | ( b | a ) ) ) = ( a | ( a | a ) ) $=
  ( tshef L53A L53B L53C L53D L53E L53F L53G eq7tr ) AACZBACZMCCLMLMCZNLCZMCZCC
  CLPCLMOCCLMLNCCCLMLACCCLMALCZCCQABDABEABFABGABHABIABJK $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L54A $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( a | b ) ) ) = ( ( ( b | a ) | ( a | b ) ) | ( ( b | a ) | ( a | b ) ) ) $=
  ( tshef nksL42 shefeq1 shefeqeq ) ABCZGCZBACZGCZHJGIGBADEZKF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L54B $p |- ( ( ( b | a ) | ( a | b ) ) | ( ( b | a ) | ( a | b ) ) ) = ( ( ( a | b ) | ( b | a ) ) | ( ( b | a ) | ( a | b ) ) ) $=
  ( tshef nksL42 shefeq1 ) BACZABCZCZGFCHGFDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L54C $p |- ( ( ( a | b ) | ( b | a ) ) | ( ( b | a ) | ( a | b ) ) ) = ( ( ( a | b ) | ( b | a ) ) | ( ( a | b ) | ( a | b ) ) ) $=
  ( tshef nksL52 shefeq2 ) BACZABCZCGGCGFCABDE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL54 $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( a | b ) ) ) = ( ( ( a | b ) | ( b | a ) ) | ( ( a | b ) | ( a | b ) ) ) $=
  ( tshef L54A L54B L54C eq3tr ) ABCZHCZICBACZHCZKCHJCZKCLICABDABEABFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L55A $p |- ( a | b ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( a | b ) ) ) $=
  ( tshef nksL40 ) ABCZED $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L55B $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( a | b ) ) ) = ( ( ( a | b ) | ( b | a ) ) | ( ( a | b ) | ( a | b ) ) ) $=
  ( nksL54 ) ABC $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L55C $p |- ( ( ( a | b ) | ( b | a ) ) | ( ( a | b ) | ( a | b ) ) ) = ( ( ( b | a ) | ( b | a ) ) | ( ( a | b ) | ( a | b ) ) ) $=
  ( tshef nksL52 shefeq1 ) ABCZBACZCGGCFFCBADE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL55 $p |- ( a | b ) = ( ( ( b | a ) | ( b | a ) ) | ( ( a | b ) | ( a | b ) ) ) $=
  ( tshef L55A L55B L55C eq3tr ) ABCZHHCZICHBACZCICJJCICABDABEABFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L56A $p |- ( a | ( b | ( b | b ) ) ) = ( a | ( ( b | b ) | ( ( a | b ) | ( a | b ) ) ) ) $=
  ( tshef nksL53 eqcom shefeq2 ) BBBCZCZGABCZICCZAJHBADEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L56B $p |- ( a | ( ( b | b ) | ( ( a | b ) | ( a | b ) ) ) ) = ( a | ( ( ( a | b ) | ( a | b ) ) | ( b | b ) ) ) $=
  ( tshef nksL42 shefeq2 ) BBCZABCZGCZCHFCAHFDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L56C $p |- ( a | ( ( ( a | b ) | ( a | b ) ) | ( b | b ) ) ) = ( a | ( ( ( a | b ) | ( a | b ) ) | ( ( ( b | b ) | ( a | b ) ) | ( ( b | b ) | ( a | b ) ) ) ) ) $=
  ( tshef nksL40 shefeqeq shefeq22 ) BBCZGABCZCZICHHCABIBIBADZJEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L56D $p |- ( a | ( ( ( a | b ) | ( a | b ) ) | ( ( ( b | b ) | ( a | b ) ) | ( ( b | b ) | ( a | b ) ) ) ) ) = ( a | ( ( a | b ) | ( ( a | b ) | ( a | b ) ) ) ) $=
  ( tshef nksL53 shefeq2 ) ABCZFCZBBCZFCZICCFGCAFHDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L56E $p |- ( a | ( ( a | b ) | ( ( a | b ) | ( a | b ) ) ) ) = ( a | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) $=
  ( tshef nksL42 shefeq2 ) ABCZFFCZCGFCAGFDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L56F $p |- ( a | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) = ( a | ( ( ( a | b ) | ( a | b ) ) | ( a | ( ( a | b ) | ( a | b ) ) ) ) ) $=
  ( tshef nksL32 eqcom shefeq22 ) ABCZAGGCZCZHAIGABDEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L56G $p |- ( a | ( ( ( a | b ) | ( a | b ) ) | ( a | ( ( a | b ) | ( a | b ) ) ) ) ) = ( a | a ) $=
  ( tshef nksL51 ) AABCZECD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL56 $p |- ( a | ( b | ( b | b ) ) ) = ( a | a ) $=
  ( tshef L56A L56B L56C L56D L56E L56F L56G eq7tr ) ABBBCZCCALABCZMCZCCANLCCAN
  LMCZOCCCAMNCCANMCCANANCCCAACABDABEABFABGABHABIABJK $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  T02A $p |- ( a | ( b | ( b | b ) ) ) = ( a | a ) $=
  ( nksL56 ) ABC $.

$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
           Second Sheffer axiom
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)

  $( Proof of Sheffer's second axiom for Boolaen Algebra.  (Contributed by SW,
     14-May-2002.) $)
  nksT2 $p |- ( a | ( b | ( b | b ) ) ) = ( a | a ) $=
  ( T02A ) ABC $.

$(
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
         Lemmas nksL57 through nksL81 towards proving third Sheffer axiom
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
$)

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L57A $p |- ( ( ( a | a ) | ( ( ( a | b ) | ( a | b ) ) | c ) ) | ( ( a | a ) | ( ( ( a | b ) | ( a | b ) ) | c ) ) ) = ( ( ( a | a ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) ) | ( ( a | a ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) ) ) $=
    ( tshef nksL56 eqcom shefeq21 shefeqeq ) AAEZABEZKEZCEEZJKDDDEEEZCEEZMOLNCJ
    NLKDFGHZPI $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L57B $p |- ( ( ( a | a ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) ) | ( ( a | a ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) ) ) = ( ( ( a | ( d | ( d | d ) ) ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) ) | ( ( a | ( d | ( d | d ) ) ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) ) ) $=
  ( tshef nksT2 eqcom shefeq1 shefeqeq ) AAEZABEDDDEEZECEZEZAKEZLEZMOJNLNJADFGHZ
  PI $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L57C $p |- ( ( ( a | ( d | ( d | d ) ) ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) ) | ( ( a | ( d | ( d | d ) ) ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) ) ) = ( ( ( a | ( d | ( d | d ) ) ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) ) | ( d | ( d | d ) ) ) $=
  ( tshef nksL56 eqcom ) ADDDEEZEABEHECEEZHEIIEIDFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L57D $p |- ( ( ( a | ( d | ( d | d ) ) ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) ) | ( d | ( d | d ) ) ) = ( ( d | ( d | d ) ) | ( ( a | ( d | ( d | d ) ) ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) ) ) $=
  ( tshef nksL42 ) DDDEEZAGEABEGECEEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L57E $p |- ( ( d | ( d | d ) ) | ( ( a | ( d | ( d | d ) ) ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) ) ) = ( ( d | ( d | d ) ) | ( ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) | ( a | ( d | ( d | d ) ) ) ) ) $=
  ( tshef nksL42 shefeq2 ) ADDDEEZEZABEHECEZEJIEHJIFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L57F $p |- ( ( d | ( d | d ) ) | ( ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) | ( a | ( d | ( d | d ) ) ) ) ) = ( ( ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) | ( a | ( d | ( d | d ) ) ) ) | ( d | ( d | d ) ) ) $=
  ( tshef nksL42 ) ABEDDDEEZECEAGEEGF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L57G $p |- ( ( ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) | ( a | ( d | ( d | d ) ) ) ) | ( d | ( d | d ) ) ) = ( ( ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) | ( a | ( d | ( d | d ) ) ) ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | ( ( d | ( d | d ) ) | ( ( a | b ) | ( d | ( d | d ) ) ) ) ) ) $=
  ( tshef nksL46 eqcom shefeq2 ) DDDEEZABEZIEZIKEEZKCEAIEELIIJIFGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L57H $p |- ( ( ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) | ( a | ( d | ( d | d ) ) ) ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | ( ( d | ( d | d ) ) | ( ( a | b ) | ( d | ( d | d ) ) ) ) ) ) = ( ( ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) | ( a | ( ( a | ( d | ( d | d ) ) ) | a ) ) ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | ( ( d | ( d | d ) ) | ( ( a | b ) | ( d | ( d | d ) ) ) ) ) ) $=
  ( tshef nksL33 eqcom shefeq12 ) ADDDEEZEZAJAEEZABEIEZCELILEEKJAIFGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L57I $p |- ( ( ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) | ( a | ( ( a | ( d | ( d | d ) ) ) | a ) ) ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | ( ( d | ( d | d ) ) | ( ( a | b ) | ( d | ( d | d ) ) ) ) ) ) = ( ( ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) | ( a | ( ( a | ( d | ( d | d ) ) ) | a ) ) ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | ( ( ( ( a | b ) | ( d | ( d | d ) ) ) | ( a | ( ( a | ( d | ( d | d ) ) ) | a ) ) ) | ( ( a | b ) | ( d | ( d | d ) ) ) ) ) ) $=
  ( tshef ax-A eqcom shefeq221 ) DDDEEZABEIEZAAIEAEEZEZJJJCEKELIIABFGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L57J $p |- ( ( ( ( ( a | b ) | ( d | ( d | d ) ) ) | c ) | ( a | ( ( a | ( d | ( d | d ) ) ) | a ) ) ) | ( ( ( a | b ) | ( d | ( d | d ) ) ) | ( ( ( ( a | b ) | ( d | ( d | d ) ) ) | ( a | ( ( a | ( d | ( d | d ) ) ) | a ) ) ) | ( ( a | b ) | ( d | ( d | d ) ) ) ) ) ) = ( a | ( ( a | ( d | ( d | d ) ) ) | a ) ) $=
  ( tshef ax-A ) AADDDEEZEAEEABEGECF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L57K $p |- ( a | ( ( a | ( d | ( d | d ) ) ) | a ) ) = ( a | ( d | ( d | d ) ) ) $=
  ( tshef nksL33 ) ABBBCCD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL57 $p |- ( ( ( a | a ) | ( ( ( a | b ) | ( a | b ) ) | c ) ) | ( ( a | a ) | ( ( ( a | b ) | ( a | b ) ) | c ) ) ) = ( a | ( d | ( d | d ) ) ) $=
  ( tshef L57A L57B L57C L57D L57E L57F L57G L57H L57I L57J L57K eq11tr ) AAEZA
  BEZSECEEZTERSDDDEEZEZCEZEZUDEAUAEZUCEZUFEUFUAEUAUFEUAUCUEEZEUGUAEUGUBUAUBEEZE
  UCAUEAEEZEZUBUBUIEUBEEEUIUEUJUHEABCDFABCDGABCDHABCDIABCDJABCDKABCDLABCDMABCDN
  ABCDOADPQ $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L58A $p |- ( ( b | b ) | ( ( ( b | c ) | ( b | c ) ) | d ) ) = ( ( ( ( b | b ) | ( ( ( b | c ) | ( b | c ) ) | d ) ) | ( ( b | b ) | ( ( ( b | c ) | ( b | c ) ) | d ) ) ) | ( ( ( b | b ) | ( ( ( b | c ) | ( b | c ) ) | d ) ) | ( ( b | b ) | ( ( ( b | c ) | ( b | c ) ) | d ) ) ) ) $=
  ( tshef nksL41 ) AADABDZFDCDDZGE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L58B $p |- ( ( ( ( b | b ) | ( ( ( b | c ) | ( b | c ) ) | d ) ) | ( ( b | b ) | ( ( ( b | c ) | ( b | c ) ) | d ) ) ) | ( ( ( b | b ) | ( ( ( b | c ) | ( b | c ) ) | d ) ) | ( ( b | b ) | ( ( ( b | c ) | ( b | c ) ) | d ) ) ) ) = ( ( b | ( a | ( a | a ) ) ) | ( b | ( a | ( a | a ) ) ) ) $=
  ( tshef nksL57 shefeqeq ) BBEBCEZHEDEEZIEZBAAAEEEZJKBCDAFZLG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L58C $p |- ( ( b | ( a | ( a | a ) ) ) | ( b | ( a | ( a | a ) ) ) ) = ( ( b | b ) | ( b | b ) ) $=
      ( tshef nksL56 shefeqeq ) BAAACCCZBBCZFGBADZHE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL58 $p |- ( ( b | b ) | ( ( ( b | c ) | ( b | c ) ) | d ) ) = ( ( b | b ) | ( b | b ) ) $=
  ( wvf tshef L58A L58B L58C eq3tr ) AAEZABEZKECEEZLLEZMEADDDEEEZNEJJEABCFDABCG
  DAHI $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L59A $p |- ( ( a | a ) | ( ( ( a | b ) | ( a | b ) ) | c ) ) = ( ( a | a ) | ( a | a ) ) $=
  ( nksL58 ) ABCD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L59B $p |- ( ( a | a ) | ( a | a ) ) = a $=
  ( nksL22 ) AB $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL59 $p |- ( ( a | a ) | ( ( ( a | b ) | ( a | b ) ) | c ) ) = a $=
  ( tshef L59A L59B eqtr ) AADZABDZIDCDDHHDAABCEAFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L60A $p |- a = ( ( a | a ) | ( ( ( a | ( ( b | a ) | ( c | b ) ) ) | ( a | ( ( b | a ) | ( c | b ) ) ) ) | ( ( d | ( ( a | ( ( b | a ) | ( c | b ) ) ) | ( a | ( ( b | a ) | ( c | b ) ) ) ) ) | ( e | d ) ) ) ) $=
  ( tshef nksL59 eqcom ) AAFABAFCBFFZFZJFZDKFEDFFZFFAAILGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L60B $p |- ( ( a | a ) | ( ( ( a | ( ( b | a ) | ( c | b ) ) ) | ( a | ( ( b | a ) | ( c | b ) ) ) ) | ( ( d | ( ( a | ( ( b | a ) | ( c | b ) ) ) | ( a | ( ( b | a ) | ( c | b ) ) ) ) ) | ( e | d ) ) ) ) = ( ( a | a ) | ( d | ( ( a | ( ( b | a ) | ( c | b ) ) ) | ( a | ( ( b | a ) | ( c | b ) ) ) ) ) ) $=
  ( tshef nksL49 shefeq2 ) ABAFCBFFFZIFZDJFZEDFFFKAAFDJEGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L60C $p |- ( ( a | a ) | ( d | ( ( a | ( ( b | a ) | ( c | b ) ) ) | ( a | ( ( b | a ) | ( c | b ) ) ) ) ) ) = ( ( a | a ) | ( d | ( ( b | a ) | ( b | a ) ) ) ) $=
  ( tshef nksL49 shefeqeq shefeq22 ) ABAEZCBEEEZJEIIEDAAEJIJIBACFZKGH $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL60 $p |- a = ( ( a | a ) | ( d | ( ( b | a ) | ( b | a ) ) ) ) $=
  ( wvf wvg tshef L60A L60B L60C eq3tr ) AAAFZABAFZDBFFFZMFZCNFZECFFFFKOFKCLLFF
  FABDCEGABDCEHABDCIJ $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L61A $p |- ( c | ( ( a | c ) | ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) ) ) = ( c | ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | c ) ) ) $=
  ( tshef nksL42 shefeq2 ) ACDZABDCDZHDZDIGDCIGEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L61B $p |- ( c | ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | c ) ) ) = ( ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | c ) ) | c ) $=
  ( tshef nksL42 ) ABDCDZFDACDDCE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L61C $p |- ( ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | c ) ) | c ) = ( ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | c ) ) | ( ( ( a | b ) | c ) | ( c | ( ( a | b ) | c ) ) ) ) $=
  ( tshef nksL46 eqcom shefeq2 ) CABDZCDZCIDDZIIDACDDJCCHCEFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L61D $p |- ( ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | c ) ) | ( ( ( a | b ) | c ) | ( c | ( ( a | b ) | c ) ) ) ) = ( ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | ( ( a | c ) | a ) ) ) | ( ( ( a | b ) | c ) | ( c | ( ( a | b ) | c ) ) ) ) $=
  ( tshef nksL33 eqcom shefeq12 ) ACDZAHADDZABDCDZJDJCJDDIHACEFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L61E $p |- ( ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | ( ( a | c ) | a ) ) ) | ( ( ( a | b ) | c ) | ( c | ( ( a | b ) | c ) ) ) ) = ( ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | ( ( a | c ) | a ) ) ) | ( ( ( a | b ) | c ) | ( ( ( ( a | b ) | c ) | ( a | ( ( a | c ) | a ) ) ) | ( ( a | b ) | c ) ) ) ) $=
  ( tshef ax-A eqcom shefeq221 ) CABDCDZAACDADDZDZHHHHDIDJCCABEFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L61F $p |- ( ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | ( ( a | c ) | a ) ) ) | ( ( ( a | b ) | c ) | ( ( ( ( a | b ) | c ) | ( a | ( ( a | c ) | a ) ) ) | ( ( a | b ) | c ) ) ) ) = ( a | ( ( a | c ) | a ) ) $=
  ( tshef ax-A ) AACDADDABDCDZFE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L61G $p |- ( a | ( ( a | c ) | a ) ) = ( a | c ) $=
  ( nksL33 ) ABC $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL61 $p |- ( c | ( ( a | c ) | ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) ) ) = ( a | c ) $=
  ( tshef L61A L61B L61C L61D L61E L61F L61G eq7tr ) CACDZABDCDZNDZDDCOMDZDPCDP
  NCNDDZDOAMADDZDZQDSNNRDNDDDRMABCEABCFABCGABCHABCIABCJACKL $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L62A $p |- ( ( a | a ) | b ) = ( b | ( ( ( a | a ) | b ) | ( ( ( ( a | a ) | ( ( ( a | c ) | ( a | c ) ) | d ) ) | b ) | ( ( ( a | a ) | ( ( ( a | c ) | ( a | c ) ) | d ) ) | b ) ) ) ) $=
  ( tshef nksL61 eqcom ) BAAEZBEZHACEZJEDEZEBEZLEEEIHKBFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L62B $p |- ( b | ( ( ( a | a ) | b ) | ( ( ( ( a | a ) | ( ( ( a | c ) | ( a | c ) ) | d ) ) | b ) | ( ( ( a | a ) | ( ( ( a | c ) | ( a | c ) ) | d ) ) | b ) ) ) ) = ( b | ( ( ( a | a ) | b ) | ( ( a | b ) | ( a | b ) ) ) ) $=
  ( tshef nksL59 shefeq1 shefeqeq shefeq22 ) AAEZACEZKEDEEZBEZMEABEZNEJBEBMNMNLAB
  ACDFGZOHI $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L62C $p |- ( b | ( ( ( a | a ) | b ) | ( ( a | b ) | ( a | b ) ) ) ) = ( b | ( ( ( a | b ) | ( a | b ) ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( ( a | b ) | ( a | b ) ) ) ) ) ) $=
  ( tshef nksL50 shefeq2 ) AACZBCABCZGCZCZHFICCBFBHDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L62D $p |- ( b | ( ( ( a | b ) | ( a | b ) ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( ( a | b ) | ( a | b ) ) ) ) ) ) = ( b | ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( ( b | c ) | a ) ) | ( ( a | b ) | ( ( b | c ) | a ) ) ) | ( ( ( a | a ) | b ) | ( ( a | b ) | ( a | b ) ) ) ) ) ) $=
  ( tshef nksL45 eqcom shefeqeq shefeq221 ) AADZABDZBCDADDZKDIBDJJDZDLBAKAKKABACE
  FZMGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L62E $p |- ( b | ( ( ( a | b ) | ( a | b ) ) | ( ( ( ( a | b ) | ( ( b | c ) | a ) ) | ( ( a | b ) | ( ( b | c ) | a ) ) ) | ( ( ( a | a ) | b ) | ( ( a | b ) | ( a | b ) ) ) ) ) ) = ( b | ( a | b ) ) $=
  ( tshef nksL59 shefeq2 ) ABDZGDZGBCDADZDZJDAADBDHDZDDGBGIKEF $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL62 $p |- ( ( a | a ) | b ) = ( b | ( a | b ) ) $=
  ( wvf wvg wvh tshef L62A L62B L62C L62D L62E eq5tr ) AAFZBFZBNMACFZOFDFFBFZPF
  FFBNABFZQFZFZFBRMSFFFBRQBEFAFFZTFSFFFBQFABCDGABCDHABIABEJABEKL $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L63A $p |- ( a | ( a | b ) ) = ( a | ( b | a ) ) $=
  ( tshef nksL42 shefeq2 ) ABCBACABADE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L63B $p |- ( a | ( b | a ) ) = ( ( b | b ) | a ) $=
  ( tshef nksL62 eqcom ) BBCACABACCBADE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL63 $p |- ( a | ( a | b ) ) = ( ( b | b ) | a ) $=
  ( tshef L63A L63B eqtr ) AABCCABACCBBCACABDABEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L64A $p |- ( a | ( b | c ) ) = ( ( ( a | ( b | c ) ) | c ) | ( ( c | a ) | ( a | ( b | c ) ) ) ) $=
  ( tshef nksL45 eqcom ) ABCDDZCDCADGDDGCGAEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L64B $p |- ( ( ( a | ( b | c ) ) | c ) | ( ( c | a ) | ( a | ( b | c ) ) ) ) = ( ( ( a | ( b | c ) ) | c ) | ( ( c | a ) | ( ( b | c ) | a ) ) ) $=
  ( tshef nksL42 shefeq22 ) ABCDZDZGADCADHCDGAEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L64C $p |- ( ( ( a | ( b | c ) ) | c ) | ( ( c | a ) | ( ( b | c ) | a ) ) ) = ( ( ( a | ( b | c ) ) | c ) | a ) $=
  ( tshef nksL44 shefeq2 ) CADBCDZADDAAGDCDBCAEF $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL64 $p |- ( a | ( b | c ) ) = ( ( ( a | ( b | c ) ) | c ) | a ) $=
  ( tshef L64A L64B L64C eq3tr ) ABCDZDZJCDZCADZJDDKLIADDDKADABCEABCFABCGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L65A $p |- ( a | ( b | c ) ) = ( ( ( a | ( b | c ) ) | c ) | a ) $=
  ( nksL64 ) ABCD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L65B $p |- ( ( ( a | ( b | c ) ) | c ) | a ) = ( a | ( ( a | ( b | c ) ) | c ) ) $=
  ( tshef nksL42 ) AABCDDCDE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL65 $p |- ( a | ( b | c ) ) = ( a | ( ( a | ( b | c ) ) | c ) ) $=
  ( tshef L65A L65B eqtr ) ABCDDZHCDZADAIDABCEABCFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L66A $p |- ( a | c ) = ( ( ( a | c ) | ( a | c ) ) | ( ( ( ( a | c ) | ( c | a ) ) | ( ( a | c ) | ( c | a ) ) ) | b ) ) $=
  ( tshef nksL59 eqcom ) ACDZGDGCADZDZIDBDDGGHBEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L66B $p |- ( ( ( a | c ) | ( a | c ) ) | ( ( ( ( a | c ) | ( c | a ) ) | ( ( a | c ) | ( c | a ) ) ) | b ) ) = ( ( ( a | c ) | ( a | c ) ) | ( ( ( ( c | a ) | ( c | a ) ) | ( ( c | a ) | ( c | a ) ) ) | b ) ) $=
  ( tshef nksL52 shefeqeq shefeq21 ) ACDZCADZDZJDIIDZKDBHHDJKJKCAEZLFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L66C $p |- ( ( ( a | c ) | ( a | c ) ) | ( ( ( ( c | a ) | ( c | a ) ) | ( ( c | a ) | ( c | a ) ) ) | b ) ) = ( ( ( a | c ) | ( a | c ) ) | ( ( c | a ) | b ) ) $=
  ( tshef nksL30 shefeq21 ) CADZGDZHDGBACDZIDGGEF $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL66 $p |- ( a | c ) = ( ( ( a | c ) | ( a | c ) ) | ( ( c | a ) | b ) ) $=
  ( tshef L66A L66B L66C eq3tr ) ACDZIIDZICADZDZLDBDDJKKDZMDBDDJKBDDABCEABCFABC
  GH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L67A $p |- ( ( a | b ) | ( a | b ) ) = ( ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( a | b ) ) ) | ( ( ( ( ( a | b ) | ( a | b ) ) | ( ( b | a ) | ( b | a ) ) ) | ( ( ( a | b ) | ( a | b ) ) | ( ( b | a ) | ( b | a ) ) ) ) | c ) ) $=
  ( tshef nksL59 eqcom ) ABDZGDZHDHBADZIDZDZKDCDDHHJCEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L67B $p |- ( ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( a | b ) ) ) | ( ( ( ( ( a | b ) | ( a | b ) ) | ( ( b | a ) | ( b | a ) ) ) | ( ( ( a | b ) | ( a | b ) ) | ( ( b | a ) | ( b | a ) ) ) ) | c ) ) = ( ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( a | b ) ) ) | ( ( ( b | a ) | ( b | a ) ) | c ) ) $=
  ( tshef nksL55 eqcom shefeqeq shefeq21 ) ABDZIDZBADZKDZDZMDLCJJDMKMKKMBAEFZNGH
  $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L67C $p |- ( ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( a | b ) ) ) | ( ( ( b | a ) | ( b | a ) ) | c ) ) = ( ( a | b ) | ( ( ( b | a ) | ( b | a ) ) | c ) ) $=
  ( tshef nksL30 shefeq1 ) ABDZGDZHDGBADZIDCDGGEF $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL67 $p |- ( ( a | b ) | ( a | b ) ) = ( ( a | b ) | ( ( ( b | a ) | ( b | a ) ) | c ) ) $=
  ( tshef L67A L67B L67C eq3tr ) ABDZIDZJJDZJBADZLDZDZNDCDDKMCDZDIODABCEABCFABC
  GH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L68A $p |- ( a | ( ( ( b | c ) | ( b | a ) ) | ( ( b | c ) | ( b | a ) ) ) ) = ( ( ( ( b | c ) | ( b | a ) ) | ( ( b | c ) | ( b | a ) ) ) | a ) $=
  ( tshef nksL42 ) BCDBADDZFDAE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L68B $p |- ( ( ( ( b | c ) | ( b | a ) ) | ( ( b | c ) | ( b | a ) ) ) | a ) = ( a | ( a | ( ( b | c ) | ( b | a ) ) ) ) $=
  ( tshef nksL63 eqcom ) AABCDBADDZDDGGDADAGEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L68C $p |- ( a | ( a | ( ( b | c ) | ( b | a ) ) ) ) = ( a | ( a | ( ( b | c ) | ( b | ( ( b | a ) | b ) ) ) ) ) $=
  ( tshef nksL33 eqcom shefeq222 ) BADZBHBDDZBCDAAIHBAEFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L68D $p |- ( a | ( a | ( ( b | c ) | ( b | ( ( b | a ) | b ) ) ) ) ) = ( a | ( a | ( ( b | c ) | ( ( ( b | c ) | ( b | ( ( b | a ) | b ) ) ) | ( b | c ) ) ) ) ) $=
  ( tshef nksL33 eqcom shefeq22 ) BCDZBBADBDDZDZHJHDDZAAKJHIEFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L68E $p |- ( a | ( a | ( ( b | c ) | ( ( ( b | c ) | ( b | ( ( b | a ) | b ) ) ) | ( b | c ) ) ) ) ) = ( a | ( ( ( ( b | c ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | c ) | ( ( ( b | c ) | ( b | ( ( b | a ) | b ) ) ) | ( b | c ) ) ) ) ) $=
  ( tshef ax-A eqcom shefeq21 ) ABCDZADBBADBDDZDZHHIDHDDAJAABCEFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L68F $p |- ( a | ( ( ( ( b | c ) | a ) | ( b | ( ( b | a ) | b ) ) ) | ( ( b | c ) | ( ( ( b | c ) | ( b | ( ( b | a ) | b ) ) ) | ( b | c ) ) ) ) ) = ( a | ( b | ( ( b | a ) | b ) ) ) $=
  ( tshef ax-A shefeq2 ) BCDZADBBADBDDZDGGHDGDDDHAHGAEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L68G $p |- ( a | ( b | ( ( b | a ) | b ) ) ) = ( a | ( b | a ) ) $=
  ( tshef nksL33 shefeq2 ) BBACZBCCFABADE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L68H $p |- ( a | ( b | a ) ) = ( ( b | b ) | a ) $=
  ( tshef nksL62 eqcom ) BBCACABACCBADE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL68 $p |- ( a | ( ( ( b | c ) | ( b | a ) ) | ( ( b | c ) | ( b | a ) ) ) ) = ( ( b | b ) | a ) $=
  ( tshef L68A L68B L68C L68D L68E L68F L68G L68H eq8tr ) ABCDZBADZDZPDZDQADAAP
  DDAANBOBDDZDZDDAANSNDDZDDANADRDTDDARDAODBBDADABCEABCFABCGABCHABCIABCJABKABLM
  $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L69A $p |- ( ( b | c ) | a ) = ( ( ( ( b | c ) | ( b | c ) ) | ( ( b | c ) | ( b | c ) ) ) | a ) $=
  ( tshef nksL41 shefeq1 ) BCDZGGDZHDAGGEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L69B $p |- ( ( ( ( b | c ) | ( b | c ) ) | ( ( b | c ) | ( b | c ) ) ) | a ) = ( a | ( ( ( ( ( b | c ) | ( b | c ) ) | ( ( c | b ) | ( c | b ) ) ) | ( ( ( b | c ) | ( b | c ) ) | a ) ) | ( ( ( ( b | c ) | ( b | c ) ) | ( ( c | b ) | ( c | b ) ) ) | ( ( ( b | c ) | ( b | c ) ) | a ) ) ) ) $=
  ( tshef nksL68 eqcom ) ABCDZGDZCBDZIDZDHADDZKDDHHDADAHJEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L69C $p |- ( a | ( ( ( ( ( b | c ) | ( b | c ) ) | ( ( c | b ) | ( c | b ) ) ) | ( ( ( b | c ) | ( b | c ) ) | a ) ) | ( ( ( ( b | c ) | ( b | c ) ) | ( ( c | b ) | ( c | b ) ) ) | ( ( ( b | c ) | ( b | c ) ) | a ) ) ) ) = ( a | ( ( ( c | b ) | ( ( ( b | c ) | ( b | c ) ) | a ) ) | ( ( c | b ) | ( ( ( b | c ) | ( b | c ) ) | a ) ) ) ) $=
    ( tshef nksL55 eqcom shefeq1 shefeqeq shefeq2 ) BCDZJDZCBDZLDDZKADZDZODLNDZ
    PDAOPOPMLNLMCBEFGZQHI $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL69 $p |- ( ( b | c ) | a ) = ( a | ( ( ( c | b ) | ( ( ( b | c ) | ( b | c ) ) | a ) ) | ( ( c | b ) | ( ( ( b | c ) | ( b | c ) ) | a ) ) ) ) $=
  ( tshef L69A L69B L69C eq3tr ) BCDZADIIDZJDADAJCBDZKDDJADZDZMDDAKLDZNDDABCEAB
  CFABCGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L70A $p |- ( ( b | c ) | a ) = ( a | ( ( ( c | b ) | ( ( ( b | c ) | ( b | c ) ) | a ) ) | ( ( c | b ) | ( ( ( b | c ) | ( b | c ) ) | a ) ) ) ) $=
  ( nksL69 ) ABCD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L70B $p |- ( a | ( ( ( c | b ) | ( ( ( b | c ) | ( b | c ) ) | a ) ) | ( ( c | b ) | ( ( ( b | c ) | ( b | c ) ) | a ) ) ) ) = ( a | ( ( ( c | b ) | ( c | b ) ) | ( ( c | b ) | ( c | b ) ) ) ) $=
  ( tshef nksL67 eqcom shefeqeq shefeq2 ) CBDZBCDZJDADDZKDIIDZLDAKLKLLKCBAEFZMGH
  $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L70C $p |- ( a | ( ( ( c | b ) | ( c | b ) ) | ( ( c | b ) | ( c | b ) ) ) ) = ( a | ( c | b ) ) $=
  ( tshef nksL30 shefeq2 ) CBDZGDZHDGAGGEF $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL70 $p |- ( ( b | c ) | a ) = ( a | ( c | b ) ) $=
  ( tshef L70A L70B L70C eq3tr ) BCDZADACBDZIIDADDZKDDAJJDZLDDAJDABCEABCFABCGH
  $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L71A $p |- ( ( ( b | c ) | ( b | c ) ) | a ) = ( a | ( ( ( ( b | c ) | ( c | b ) ) | ( ( b | c ) | a ) ) | ( ( ( b | c ) | ( c | b ) ) | ( ( b | c ) | a ) ) ) ) $=
  ( tshef nksL68 eqcom ) ABCDZCBDZDGADDZIDDGGDADAGHEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L71B $p |- ( a | ( ( ( ( b | c ) | ( c | b ) ) | ( ( b | c ) | a ) ) | ( ( ( b | c ) | ( c | b ) ) | ( ( b | c ) | a ) ) ) ) = ( a | ( ( ( ( c | b ) | ( c | b ) ) | ( ( b | c ) | a ) ) | ( ( ( c | b ) | ( c | b ) ) | ( ( b | c ) | a ) ) ) ) $=
    ( tshef nksL52 shefeq1 shefeqeq shefeq2 ) BCDZCBDZDZIADZDZMDJJDZLDZODAMOMOK
    NLCBEFZPGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L71C $p |- ( a | ( ( ( ( c | b ) | ( c | b ) ) | ( ( b | c ) | a ) ) | ( ( ( c | b ) | ( c | b ) ) | ( ( b | c ) | a ) ) ) ) = ( a | ( ( c | b ) | ( c | b ) ) ) $=
  ( tshef nksL66 eqcom shefeqeq shefeq2 ) CBDZIDZBCDADDZKDJAKIKIIKCABEFZLGH $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL71 $p |- ( ( ( b | c ) | ( b | c ) ) | a ) = ( a | ( ( c | b ) | ( c | b ) ) ) $=
  ( tshef L71A L71B L71C eq3tr ) BCDZIDADAICBDZDIADZDZLDDAJJDZKDZNDDAMDABCEABCF
  ABCGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L72A $p |- ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) = ( ( a | ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) ) | ( ( a | a ) | ( ( ( a | a ) | ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) ) | ( a | a ) ) ) ) $=
  ( tshef nksL3 eqcom ) ABADBCDADZGDDZDAADZIHDIDDDHAHEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L72B $p |- ( ( a | ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) ) | ( ( a | a ) | ( ( ( a | a ) | ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) ) | ( a | a ) ) ) ) = ( ( a | ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) ) | ( ( a | a ) | ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) ) ) $=
  ( tshef nksL33 shefeq2 ) AADZGBADBCDADZHDDZDZGDDJAIDGIEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L72C $p |- ( ( a | ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) ) | ( ( a | a ) | ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) ) ) = ( ( b | a ) | ( ( a | a ) | ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) ) ) $=
  ( tshef nksL61 shefeq1 ) ABADZBCDADZHDDZDGAADIDBCAEF $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL72 $p |- ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) = ( ( b | a ) | ( ( a | a ) | ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) ) ) $=
  ( tshef L72A L72B L72C eq3tr ) BADZBCDADZJDDZAKDZAADZMKDZMDDDLNDINDABCEABCFAB
  CGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L73A $p |- ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) = ( ( b | a ) | ( ( a | a ) | ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) ) ) $=
  ( nksL72 ) ABCD $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L73B $p |- ( ( b | a ) | ( ( a | a ) | ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) ) ) = ( ( b | a ) | a ) $=
  ( tshef nksL60 eqcom shefeq2 ) AADBADZBCDZADZJDDDZAHAKAIHEFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L73C $p |- ( ( b | a ) | a ) = ( a | ( a | b ) ) $=
  ( nksL70 ) ABAC $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L73D $p |- ( a | ( a | b ) ) = ( ( b | b ) | a ) $=
  ( nksL63 ) ABC $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL73 $p |- ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) = ( ( b | b ) | a ) $=
  ( tshef L73A L73B L73C L73D eq4tr ) BADZBCDADZKDDZJAADLDDJADAABDDBBDADABCEABC
  FABGABHI $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L74A $p |- ( ( a | a ) | c ) = ( ( a | c ) | ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) ) $=
  ( tshef nksL73 eqcom ) ACDABDCDZGDDAADCDCABEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L74B $p |- ( ( a | c ) | ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) ) = ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | ( ( a | c ) | ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) ) ) ) $=
  ( tshef nksL50 ) ACABDCDZFDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L74C $p |- ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | ( ( a | c ) | ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) ) ) ) = ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | ( ( a | a ) | c ) ) ) $=
  ( tshef nksL73 shefeq22 ) ACDABDCDZGDZDAADCDAHCABEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L74D $p |- ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | ( ( a | a ) | c ) ) ) = ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( ( ( a | a ) | ( a | a ) ) | ( ( a | a ) | c ) ) ) $=
  ( tshef nksL40 shefeq21 ) AAADZGDGCDABDCDZHDAAEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L74E $p |- ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( ( ( a | a ) | ( a | a ) ) | ( ( a | a ) | c ) ) ) = ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | a ) ) $=
  ( tshef nksL66 eqcom shefeq2 ) AADZHDHCDDZHABDCDZJDHIACAEFG $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL74 $p |- ( ( a | a ) | c ) = ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | a ) ) $=
  ( tshef L74A L74B L74C L74D L74E eq5tr ) AADZCDZACDABDCDZMDZDZNAODDNALDDNKKDL
  DDNKDABCEABCFABCGABCHABCIJ $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L75A $p |- ( ( a | a ) | ( ( c | ( a | b ) ) | ( c | ( a | b ) ) ) ) = ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | a ) ) $=
  ( tshef nksL71 eqcom ) ABDZCDZHDAADZDICGDZJDDIGCEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L75B $p |- ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | a ) ) = ( ( a | a ) | c ) $=
  ( tshef nksL74 eqcom ) AADZCDABDCDZHDGDABCEF $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL75 $p |- ( ( a | a ) | ( ( c | ( a | b ) ) | ( c | ( a | b ) ) ) ) = ( ( a | a ) | c ) $=
  ( tshef L75A L75B eqtr ) AADZCABDZDZJDDICDZKDHDHCDABCEABCFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L76A $p |- ( ( b | ( a | c ) ) | ( a | a ) ) = ( ( ( ( b | ( a | c ) ) | ( b | ( a | c ) ) ) | ( ( b | ( a | c ) ) | ( b | ( a | c ) ) ) ) | ( a | a ) ) $=
  ( tshef nksL22 eqcom shefeq1 ) BACDDZHHDZIDZAADJHHEFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L76B $p |- ( ( ( ( b | ( a | c ) ) | ( b | ( a | c ) ) ) | ( ( b | ( a | c ) ) | ( b | ( a | c ) ) ) ) | ( a | a ) ) = ( ( a | a ) | ( ( a | a ) | ( ( b | ( a | c ) ) | ( b | ( a | c ) ) ) ) ) $=
  ( tshef nksL63 eqcom ) AADZGBACDDZHDZDDIIDGDGIEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L76C $p |- ( ( a | a ) | ( ( a | a ) | ( ( b | ( a | c ) ) | ( b | ( a | c ) ) ) ) ) = ( ( a | a ) | ( ( a | a ) | b ) ) $=
  ( tshef nksL75 shefeq2 ) AADZBACDDZHDDGBDGACBEF $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL76 $p |- ( ( b | ( a | c ) ) | ( a | a ) ) = ( ( a | a ) | ( ( a | a ) | b ) ) $=
  ( tshef L76A L76B L76C eq3tr ) BACDDZAADZDIIDZKDJDJJKDDJJBDDABCEABCFABCGH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L77A $p |- ( ( ( a | b ) | ( a | b ) ) | ( c | a ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( ( c | a ) | ( ( a | b ) | c ) ) | ( ( c | a ) | ( ( a | b ) | c ) ) ) ) $=
  ( tshef nksL75 eqcom ) ABDZGDZCADZGCDDZJDDHIDGCIEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L77B $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( ( c | a ) | ( ( a | b ) | c ) ) | ( ( c | a ) | ( ( a | b ) | c ) ) ) ) = ( ( ( a | b ) | ( a | b ) ) | ( c | c ) ) $=
  ( tshef nksL45 shefeqeq shefeq2 ) CADABDZCDDZIDCCDHHDICICACBEZJFG $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL77 $p |- ( ( ( a | b ) | ( a | b ) ) | ( c | a ) ) = ( ( ( a | b ) | ( a | b ) ) | ( c | c ) ) $=
  ( tshef L77A L77B eqtr ) ABDZHDZCADZDIJHCDDZKDDICCDDABCEABCFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L78A $p |- ( ( ( b | c ) | ( b | c ) ) | a ) = ( ( ( b | c ) | ( b | c ) ) | ( ( a | b ) | ( ( b | c ) | a ) ) ) $=
  ( tshef nksL45 eqcom shefeq2 ) AABDBCDZADDZHHDIABACEFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L78B $p |- ( ( ( b | c ) | ( b | c ) ) | ( ( a | b ) | ( ( b | c ) | a ) ) ) = ( ( ( ( b | c ) | a ) | ( a | b ) ) | ( ( b | c ) | ( b | c ) ) ) $=
  ( tshef nksL70 eqcom ) BCDZADZABDZDGGDZDJIHDDJHIEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L78C $p |- ( ( ( ( b | c ) | a ) | ( a | b ) ) | ( ( b | c ) | ( b | c ) ) ) = ( ( ( ( ( ( b | c ) | a ) | ( a | b ) ) | ( ( ( b | c ) | a ) | ( a | b ) ) ) | ( ( ( ( b | c ) | a ) | ( a | b ) ) | ( ( ( b | c ) | a ) | ( a | b ) ) ) ) | ( ( b | c ) | ( b | c ) ) ) $=
  ( tshef nksL22 eqcom shefeq1 ) BCDZADABDDZIIDZJDZHHDKIIEFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L78D $p |- ( ( ( ( ( ( b | c ) | a ) | ( a | b ) ) | ( ( ( b | c ) | a ) | ( a | b ) ) ) | ( ( ( ( b | c ) | a ) | ( a | b ) ) | ( ( ( b | c ) | a ) | ( a | b ) ) ) ) | ( ( b | c ) | ( b | c ) ) ) = ( ( ( b | c ) | ( b | c ) ) | ( ( ( b | c ) | ( b | c ) ) | ( ( ( ( b | c ) | a ) | ( a | b ) ) | ( ( ( b | c ) | a ) | ( a | b ) ) ) ) ) $=
  ( tshef nksL63 eqcom ) BCDZGDZHGADABDDZIDZDDJJDHDHJEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L78E $p |- ( ( ( b | c ) | ( b | c ) ) | ( ( ( b | c ) | ( b | c ) ) | ( ( ( ( b | c ) | a ) | ( a | b ) ) | ( ( ( b | c ) | a ) | ( a | b ) ) ) ) ) = ( ( ( ( ( ( b | c ) | a ) | ( a | b ) ) | ( ( ( b | c ) | a ) | ( a | b ) ) ) | ( ( b | c ) | ( a | b ) ) ) | ( ( b | c ) | ( b | c ) ) ) $=
  ( tshef nksL76 eqcom ) BCDZADABDZDZIDZGHDDGGDZDKKJDDGJHEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L78F $p |- ( ( ( ( ( ( b | c ) | a ) | ( a | b ) ) | ( ( ( b | c ) | a ) | ( a | b ) ) ) | ( ( b | c ) | ( a | b ) ) ) | ( ( b | c ) | ( b | c ) ) ) = ( ( ( b | c ) | ( b | c ) ) | ( ( ( b | c ) | ( a | b ) ) | ( ( ( ( b | c ) | a ) | ( a | b ) ) | ( ( ( b | c ) | a ) | ( a | b ) ) ) ) ) $=
  ( tshef nksL70 ) BCDZFDFADABDZDZHDFGDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L78G $p |- ( ( ( b | c ) | ( b | c ) ) | ( ( ( b | c ) | ( a | b ) ) | ( ( ( ( b | c ) | a ) | ( a | b ) ) | ( ( ( b | c ) | a ) | ( a | b ) ) ) ) ) = ( ( ( b | c ) | ( b | c ) ) | ( ( ( b | c ) | ( b | c ) ) | ( a | b ) ) ) $=
  ( tshef nksL73 shefeq2 ) BCDZABDZDGADHDZIDDGGDZHDJHGAEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L78H $p |- ( ( ( b | c ) | ( b | c ) ) | ( ( ( b | c ) | ( b | c ) ) | ( a | b ) ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( b | c ) | ( b | c ) ) ) $=
  ( tshef nksL63 ) BCDZFDABDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L78I $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( b | c ) | ( b | c ) ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( c | ( ( a | b ) | ( b | c ) ) ) | ( c | ( ( a | b ) | ( b | c ) ) ) ) ) $=
  ( tshef nksL47 shefeqeq shefeq2 ) BCDZHDCABDZHDDZJDIIDHJHJABCEZKFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L78J $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( c | ( ( a | b ) | ( b | c ) ) ) | ( c | ( ( a | b ) | ( b | c ) ) ) ) ) = ( ( ( a | b ) | ( a | b ) ) | c ) $=
  ( tshef nksL75 ) ABDBCDCE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L78K $p |- ( ( ( a | b ) | ( a | b ) ) | c ) = ( c | ( ( b | a ) | ( b | a ) ) ) $=
  ( nksL71 ) CABD $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL78 $p |- ( ( ( b | c ) | ( b | c ) ) | a ) = ( c | ( ( b | a ) | ( b | a ) ) ) $=
  ( tshef L78A L78B L78C L78D L78E L78F L78G L78H L78I L78J L78K eq11tr ) BCDZQ
  DZADRABDZQADZDDTSDZRDUAUADZUBDRDRRUBDDUBQSDZDRDRUCUBDDRRSDDSSDZCSQDDZUEDDUDCD
  CBADZUFDDUDRDABCEABCFABCGABCHABCIABCJABCKABCLABCMABCNABCOP $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L79A $p |- ( a | ( c | ( ( a | b ) | ( a | b ) ) ) ) = ( a | ( c | ( ( b | a ) | ( b | a ) ) ) ) $=
  ( tshef nksL42 shefeqeq shefeq22 ) ABDZHDBADZIDCAHIHIBAEZJFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L79B $p |- ( a | ( c | ( ( b | a ) | ( b | a ) ) ) ) = ( a | ( ( ( b | c ) | ( b | c ) ) | a ) ) $=
  ( tshef nksL78 eqcom shefeq2 ) CBADZHDDZBCDZJDADZAKIABCEFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L79C $p |- ( a | ( ( ( b | c ) | ( b | c ) ) | a ) ) = ( ( ( ( b | c ) | ( b | c ) ) | ( ( b | c ) | ( b | c ) ) ) | a ) $=
  ( tshef nksL62 eqcom ) BCDZGDZHDADAHADDHAEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L79D $p |- ( ( ( ( b | c ) | ( b | c ) ) | ( ( b | c ) | ( b | c ) ) ) | a ) = ( ( b | c ) | a ) $=
  ( tshef nksL30 shefeq1 ) BCDZGDZHDGAGGEF $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL79 $p |- ( a | ( c | ( ( a | b ) | ( a | b ) ) ) ) = ( ( b | c ) | a ) $=
  ( tshef L79A L79B L79C L79D eq4tr ) ACABDZJDDDACBADZKDDDABCDZLDZADDMMDADLADAB
  CEABCFABCGABCHI $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L80A $p |- ( a | ( ( b | a ) | c ) ) = ( ( c | ( b | a ) ) | a ) $=
  ( tshef nksL70 eqcom ) CBADZDADAGCDDACGEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L80B $p |- ( ( c | ( b | a ) ) | a ) = ( a | ( ( b | a ) | ( ( a | c ) | ( a | c ) ) ) ) $=
  ( tshef nksL79 eqcom ) ABADZACDZHDDDCGDADACGEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L80C $p |- ( a | ( ( b | a ) | ( ( a | c ) | ( a | c ) ) ) ) = ( a | ( ( ( a | c ) | ( a | c ) ) | ( b | a ) ) ) $=
  ( tshef nksL42 shefeq2 ) BADZACDZHDZDIGDAIGEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L80D $p |- ( a | ( ( ( a | c ) | ( a | c ) ) | ( b | a ) ) ) = ( a | ( ( ( a | c ) | ( a | c ) ) | ( b | b ) ) ) $=
  ( tshef nksL77 shefeq2 ) ACDZGDZBADDHBBDDAACBEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L80E $p |- ( a | ( ( ( a | c ) | ( a | c ) ) | ( b | b ) ) ) = ( a | ( c | ( ( a | ( b | b ) ) | ( a | ( b | b ) ) ) ) ) $=
  ( tshef nksL78 shefeq2 ) ACDZGDBBDZDCAHDZIDDAHACEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L80F $p |- ( a | ( c | ( ( a | ( b | b ) ) | ( a | ( b | b ) ) ) ) ) = ( ( ( b | b ) | c ) | a ) $=
  ( tshef nksL79 ) ABBDCE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL80 $p |- ( a | ( ( b | a ) | c ) ) = ( ( ( b | b ) | c ) | a ) $=
  ( tshef L80A L80B L80C L80D L80E L80F eq6tr ) ABADZCDDCLDADALACDZMDZDDANLDDAN
  BBDZDDACAODZPDDDOCDADABCEABCFABCGABCHABCIABCJK $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L81A $p |- ( ( ( c | a ) | ( a | b ) ) | ( ( c | a ) | ( a | b ) ) ) = ( ( ( ( ( c | a ) | ( a | b ) ) | ( ( c | a ) | ( a | b ) ) ) | ( ( ( c | a ) | ( a | b ) ) | ( ( c | a ) | ( a | b ) ) ) ) | ( ( a | a ) | ( ( ( c | a ) | ( a | b ) ) | ( ( c | a ) | ( a | b ) ) ) ) ) $=
  ( tshef nksL40 ) CADABDDZFDAADE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L81B $p |- ( ( ( ( ( c | a ) | ( a | b ) ) | ( ( c | a ) | ( a | b ) ) ) | ( ( ( c | a ) | ( a | b ) ) | ( ( c | a ) | ( a | b ) ) ) ) | ( ( a | a ) | ( ( ( c | a ) | ( a | b ) ) | ( ( c | a ) | ( a | b ) ) ) ) ) = ( ( ( ( ( c | a ) | ( a | b ) ) | ( ( c | a ) | ( a | b ) ) ) | ( ( ( c | a ) | ( a | b ) ) | ( ( c | a ) | ( a | b ) ) ) ) | ( ( a | a ) | ( c | a ) ) ) $=
  ( tshef nksL75 shefeq2 ) AADZCADZABDDZIDZDGHDJJDABHEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L81C $p |- ( ( ( ( ( c | a ) | ( a | b ) ) | ( ( c | a ) | ( a | b ) ) ) | ( ( ( c | a ) | ( a | b ) ) | ( ( c | a ) | ( a | b ) ) ) ) | ( ( a | a ) | ( c | a ) ) ) = ( ( ( c | a ) | ( a | b ) ) | ( ( a | a ) | ( c | a ) ) ) $=
  ( tshef nksL22 shefeq1 ) CADZABDDZHDZIDHAADGDHEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L81D $p |- ( ( ( c | a ) | ( a | b ) ) | ( ( a | a ) | ( c | a ) ) ) = ( ( ( a | a ) | ( c | a ) ) | ( ( a | b ) | ( c | a ) ) ) $=
  ( tshef nksL70 ) AADCADZDFABDE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L81E $p |- ( ( ( a | a ) | ( c | a ) ) | ( ( a | b ) | ( c | a ) ) ) = ( a | ( ( a | b ) | ( c | a ) ) ) $=
  ( tshef nksL40 eqcom shefeq1 ) AADCADZDZAABDHDAIACEFG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L81F $p |- ( a | ( ( a | b ) | ( c | a ) ) ) = ( ( ( c | a ) | ( a | b ) ) | a ) $=
  ( tshef nksL70 eqcom ) CADZABDZDADAHGDDAGHEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L81G $p |- ( ( ( c | a ) | ( a | b ) ) | a ) = ( a | ( ( a | b ) | ( ( a | ( c | a ) ) | ( a | ( c | a ) ) ) ) ) $=
  ( tshef nksL79 eqcom ) AABDZACADZDZIDDDHGDADAHGEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L81H $p |- ( a | ( ( a | b ) | ( ( a | ( c | a ) ) | ( a | ( c | a ) ) ) ) ) = ( a | ( ( ( a | ( c | a ) ) | ( a | ( c | a ) ) ) | ( b | a ) ) ) $=
  ( tshef nksL70 shefeq2 ) ABDACADDZGDZDHBADDAHABEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L81I $p |- ( a | ( ( ( a | ( c | a ) ) | ( a | ( c | a ) ) ) | ( b | a ) ) ) = ( a | ( ( ( a | ( c | a ) ) | ( a | ( c | a ) ) ) | ( b | b ) ) ) $=
  ( tshef nksL77 shefeq2 ) ACADZDZHDZBADDIBBDDAAGBEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L81J $p |- ( a | ( ( ( a | ( c | a ) ) | ( a | ( c | a ) ) ) | ( b | b ) ) ) = ( a | ( ( c | a ) | ( ( a | ( b | b ) ) | ( a | ( b | b ) ) ) ) ) $=
  ( tshef nksL78 shefeq2 ) ACADZDZHDBBDZDGAIDZJDDAIAGEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  L81K $p |- ( a | ( ( c | a ) | ( ( a | ( b | b ) ) | ( a | ( b | b ) ) ) ) ) = ( ( ( b | b ) | ( c | a ) ) | a ) $=
  ( tshef nksL79 ) ABBDCADE $.

  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL81 $p |- ( ( ( c | a ) | ( a | b ) ) | ( ( c | a ) | ( a | b ) ) ) = ( ( ( b | b ) | ( c | a ) ) | a ) $=
  ( tshef L81A L81B L81C L81D L81E L81F L81G L81H L81I L81J L81K eq11tr ) CADZA
  BDZDZSDZTTDZAADZTDDUAUBQDZDSUCDUCRQDZDAUDDSADARAQDZUEDZDDAUFBBDZDDAQAUGDZUHDD
  DUGQDADAUFBADDDABCEABCFABCGABCHABCIABCJABCKABCLABCMABCNABCOP $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  T03A $p |- ( ( ( b | b ) | a ) | ( ( c | c ) | a ) ) = ( ( ( b | b ) | a ) | ( a | ( c | c ) ) ) $=
    ( tshef nksL70 shefeq2 ) CCDZADAGDBBDADACCEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  T03B $p |- ( ( ( b | b ) | a ) | ( a | ( c | c ) ) ) = ( ( a | ( c | c ) ) | ( ( b | b ) | a ) ) $=
    ( tshef nksL42 ) ACCDDBBDADE $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  T03C $p |- ( ( a | ( c | c ) ) | ( ( b | b ) | a ) ) = ( ( ( ( a | a ) | ( a | a ) ) | ( c | c ) ) | ( ( b | b ) | a ) ) $=
    ( tshef nksL40 shefeq11 ) AAADZGDCCDBBDADAAEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  T03D $p |- ( ( ( ( a | a ) | ( a | a ) ) | ( c | c ) ) | ( ( b | b ) | a ) ) = ( ( ( b | b ) | a ) | ( ( ( a | a ) | ( ( b | b ) | a ) ) | ( c | c ) ) ) $=
    ( tshef nksL80 eqcom ) BBDADZAADZGDCCDZDDHHDIDGDGHIEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  T03E $p |- ( ( ( b | b ) | a ) | ( ( ( a | a ) | ( ( b | b ) | a ) ) | ( c | c ) ) ) = ( ( ( c | c ) | ( ( a | a ) | ( ( b | b ) | a ) ) ) | ( ( b | b ) | a ) ) $=
    ( tshef nksL70 eqcom ) CCDZAADBBDADZDZDHDHIGDDHGIEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  T03F $p |- ( ( ( c | c ) | ( ( a | a ) | ( ( b | b ) | a ) ) ) | ( ( b | b ) | a ) ) = ( ( ( ( a | a ) | ( ( b | b ) | a ) ) | ( ( ( b | b ) | a ) | c ) ) | ( ( ( a | a ) | ( ( b | b ) | a ) ) | ( ( ( b | b ) | a ) | c ) ) ) $=
    ( tshef nksL81 eqcom ) AADZBBDADZDZHCDDZJDCCDIDHDHCGEF $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  T03G $p |- ( ( ( ( a | a ) | ( ( b | b ) | a ) ) | ( ( ( b | b ) | a ) | c ) ) | ( ( ( a | a ) | ( ( b | b ) | a ) ) | ( ( ( b | b ) | a ) | c ) ) ) = ( ( a | ( ( ( b | b ) | a ) | c ) ) | ( a | ( ( ( b | b ) | a ) | c ) ) ) $=
    ( tshef nksL40 eqcom shefeq1 shefeqeq ) AADBBDZADZDZJCDZDZALDZMNKALAKAIEFGZOH

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
    $.
  $( PLEASE PUT DESCRIPTION HERE. $)
  T03H $p |- ( ( a | ( ( ( b | b ) | a ) | c ) ) | ( a | ( ( ( b | b ) | a ) | c ) ) ) = ( ( ( ( ( b | b ) | ( b | b ) ) | c ) | a ) | ( ( ( ( b | b ) | ( b | b ) ) | c ) | a ) ) $=

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
    ( tshef nksL80 shefeqeq ) ABBDZADCDDZGGDCDADZHIAGCEZJF $.
  $( PLEASE PUT DESCRIPTION HERE. $)
  T03I $p |- ( ( ( ( ( b | b ) | ( b | b ) ) | c ) | a ) | ( ( ( ( b | b ) | ( b | b ) ) | c ) | a ) ) = ( ( ( c | ( ( b | b ) | ( b | b ) ) ) | a ) | ( ( c | ( ( b | b ) | ( b | b ) ) ) | a ) ) $=

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
    ( tshef nksL42 shefeq1 shefeqeq ) BBDZHDZCDZADZCIDZADZKMJLACIEFZNG $.
  $( PLEASE PUT DESCRIPTION HERE. $)
  T03J $p |- ( ( ( c | ( ( b | b ) | ( b | b ) ) ) | a ) | ( ( c | ( ( b | b ) | ( b | b ) ) ) | a ) ) = ( ( ( ( ( c | ( ( b | b ) | ( b | b ) ) ) | ( c | ( ( b | b ) | ( b | b ) ) ) ) | ( ( b | b ) | ( c | ( ( b | b ) | ( b | b ) ) ) ) ) | a ) | ( ( ( ( c | ( ( b | b ) | ( b | b ) ) ) | ( c | ( ( b | b ) | ( b | b ) ) ) ) | ( ( b | b ) | ( c | ( ( b | b ) | ( b | b ) ) ) ) ) | a ) ) $=

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
    ( tshef nksL40 shefeq1 shefeqeq ) CBBDZHDDZADZIIDHIDDZADZJLIKAIHEFZMG $.
  $( PLEASE PUT DESCRIPTION HERE. $)
  T03K $p |- ( ( ( ( ( c | ( ( b | b ) | ( b | b ) ) ) | ( c | ( ( b | b ) | ( b | b ) ) ) ) | ( ( b | b ) | ( c | ( ( b | b ) | ( b | b ) ) ) ) ) | a ) | ( ( ( ( c | ( ( b | b ) | ( b | b ) ) ) | ( c | ( ( b | b ) | ( b | b ) ) ) ) | ( ( b | b ) | ( c | ( ( b | b ) | ( b | b ) ) ) ) ) | a ) ) = ( ( ( ( ( c | ( ( b | b ) | ( b | b ) ) ) | ( c | ( ( b | b ) | ( b | b ) ) ) ) | b ) | a ) | ( ( ( ( c | ( ( b | b ) | ( b | b ) ) ) | ( c | ( ( b | b ) | ( b | b ) ) ) ) | b ) | a ) ) $=

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
    ( tshef nksL60 eqcom shefeq12 shefeqeq ) CBBDZIDDZJDZIJDZDADZKBDADZMNLBKABLBBCE
    FGZOH $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  T03L $p |- ( ( ( ( ( c | ( ( b | b ) | ( b | b ) ) ) | ( c | ( ( b | b ) | ( b | b ) ) ) ) | b ) | a ) | ( ( ( ( c | ( ( b | b ) | ( b | b ) ) ) | ( c | ( ( b | b ) | ( b | b ) ) ) ) | b ) | a ) ) = ( ( ( b | ( ( c | ( ( b | b ) | ( b | b ) ) ) | ( c | ( ( b | b ) | ( b | b ) ) ) ) ) | a ) | ( ( b | ( ( c | ( ( b | b ) | ( b | b ) ) ) | ( c | ( ( b | b ) | ( b | b ) ) ) ) ) | a ) ) $=
    ( tshef nksL70 shefeq1 shefeqeq ) CBBDZHDDZIDZBDZADZBJDZADZLNKMABIIEFZOG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  T03M $p |- ( ( ( b | ( ( c | ( ( b | b ) | ( b | b ) ) ) | ( c | ( ( b | b ) | ( b | b ) ) ) ) ) | a ) | ( ( b | ( ( c | ( ( b | b ) | ( b | b ) ) ) | ( c | ( ( b | b ) | ( b | b ) ) ) ) ) | a ) ) = ( ( ( ( ( c | b ) | ( c | b ) ) | ( ( b | b ) | ( b | b ) ) ) | a ) | ( ( ( ( c | b ) | ( c | b ) ) | ( ( b | b ) | ( b | b ) ) ) | a ) ) $=
    ( tshef nksL78 eqcom shefeq1 shefeqeq ) BCBBDZIDZDZKDDZADZCBDZNDJDZADZMPLOAOLJC

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
    BEFGZQH $.
  $( PLEASE PUT DESCRIPTION HERE. $)
  T03N $p |- ( ( ( ( ( c | b ) | ( c | b ) ) | ( ( b | b ) | ( b | b ) ) ) | a ) | ( ( ( ( c | b ) | ( c | b ) ) | ( ( b | b ) | ( b | b ) ) ) | a ) ) = ( ( ( ( ( c | b ) | ( c | b ) ) | ( ( b | ( ( b | b ) | ( c | b ) ) ) | ( b | ( ( b | b ) | ( c | b ) ) ) ) ) | a ) | ( ( ( ( c | b ) | ( c | b ) ) | ( ( b | ( ( b | b ) | ( c | b ) ) ) | ( b | ( ( b | b ) | ( c | b ) ) ) ) ) | a ) ) $=

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
    ( tshef nksL40 shefeq2 shefeqeq shefeq12 ) CBDZIDZBBDZKDZDADZJBKIDZDZODZDADZMQL
    PJAKOKOBNBBCEFZRGHZSG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  T03O $p |- ( ( ( ( ( c | b ) | ( c | b ) ) | ( ( b | ( ( b | b ) | ( c | b ) ) ) | ( b | ( ( b | b ) | ( c | b ) ) ) ) ) | a ) | ( ( ( ( c | b ) | ( c | b ) ) | ( ( b | ( ( b | b ) | ( c | b ) ) ) | ( b | ( ( b | b ) | ( c | b ) ) ) ) ) | a ) ) = ( ( ( ( ( c | b ) | ( c | b ) ) | ( ( b | ( ( c | b ) | ( b | ( ( b | b ) | ( c | b ) ) ) ) ) | ( b | ( ( c | b ) | ( b | ( ( b | b ) | ( c | b ) ) ) ) ) ) ) | a ) | ( ( ( ( c | b ) | ( c | b ) ) | ( ( b | ( ( c | b ) | ( b | ( ( b | b ) | ( c | b ) ) ) ) ) | ( b | ( ( c | b ) | ( b | ( ( b | b ) | ( c | b ) ) ) ) ) ) ) | a ) ) $=
    ( tshef nksL50 shefeq2 shefeqeq shefeq12 ) CBDZIDZBBBDIDZDZLDZDADZJBILDZDZPDZDA

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
    DZNRMQJALPLPKOBBBIEFZSGHZTG $.
  $( PLEASE PUT DESCRIPTION HERE. $)
  T03P $p |- ( ( ( ( ( c | b ) | ( c | b ) ) | ( ( b | ( ( c | b ) | ( b | ( ( b | b ) | ( c | b ) ) ) ) ) | ( b | ( ( c | b ) | ( b | ( ( b | b ) | ( c | b ) ) ) ) ) ) ) | a ) | ( ( ( ( c | b ) | ( c | b ) ) | ( ( b | ( ( c | b ) | ( b | ( ( b | b ) | ( c | b ) ) ) ) ) | ( b | ( ( c | b ) | ( b | ( ( b | b ) | ( c | b ) ) ) ) ) ) ) | a ) ) = ( ( ( ( ( c | b ) | ( c | b ) ) | b ) | a ) | ( ( ( ( c | b ) | ( c | b ) ) | b ) | a ) ) $=

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
    ( tshef nksL75 shefeq1 shefeqeq ) CBDZHDZBHBBBDHDDZDDZKDDZADZIBDZADZMOLNAHJBEFZ
    PG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  T03Q $p |- ( ( ( ( ( c | b ) | ( c | b ) ) | b ) | a ) | ( ( ( ( c | b ) | ( c | b ) ) | b ) | a ) ) = ( ( ( b | ( ( c | b ) | ( c | b ) ) ) | a ) | ( ( b | ( ( c | b ) | ( c | b ) ) ) | a ) ) $=
    ( tshef nksL78 shefeq1 shefeqeq ) CBDZHDZBDZADZBIDZADZKMJLABCBEFZNG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  T03R $p |- ( ( ( b | ( ( c | b ) | ( c | b ) ) ) | a ) | ( ( b | ( ( c | b ) | ( c | b ) ) ) | a ) ) = ( ( ( c | b ) | a ) | ( ( c | b ) | a ) ) $=
    ( tshef nksL31 shefeq1 shefeqeq ) BCBDZHDDZADZHADZJKIHACBEFZLG $.

  $( Temporary intermediate step.  (Contributed by SW, 14-May-2002.) $)
  T03S $p |- ( ( ( c | b ) | a ) | ( ( c | b ) | a ) ) = ( ( a | ( b | c ) ) | ( a | ( b | c ) ) ) $=
    ( tshef nksL70 shefeqeq ) CBDADZABCDDZGHACBEZIF $.

$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
           Third Sheffer axiom
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)

  $( Proof of Sheffer's third axiom for Boolaen Algebra.  (Contributed by SW,
     14-May-2002.) $)
  nksT3 $p |- ( ( ( b | b ) | a ) | ( ( c | c ) | a ) ) = ( ( a | ( b | c ) ) | ( a | ( b | c ) ) ) $=
  ( tshef T03A T03B T03C T03D T03E T03F T03G T03H T03I T03J T03K T03L T03M T03N
  T03O T03P T03Q T03R T03S eq19tr ) BBDZADZCCDZADDUFAUGDZDUHUFDAADZUIDUGDUFDUFU
  IUFDZUGDDUGUJDUFDUJUFCDZDZULDAUKDZUMDCUEUEDZDZADZUPDUOUODZUEUODDADZURDUQBDADZ
  USDUNCDADZUTDBUQDADZVADCBDZVBDZUNDADZVDDVCBUEVBDDZVEDDADZVFDVCBVBVEDDZVGDDADZ
  VHDVCBDADZVIDBVCDADZVJDVBADZVKDABCDDZVLDABCEABCFABCGABCHABCIABCJABCKABCLABCMA
  BCNABCOABCPABCQABCRABCSABCTABCUAABCUBABCUCUD $.


$( $t

/* The '$t' token indicates the beginning of the typesetting definition
section, embedded in a Metamath comment.  There may only be one per
source file, and the typesetting section ends with the end of the
Metamath comment.  The typesetting section uses C-style comment
delimiters.  */

/* These are the LaTeX and HTML definitions in the order the tokens are
introduced in $c or $v statements.  See HELP TEX or HELP HTML in the
Metamath program. */

/* Definitions for LaTeX output of various Metamath commands */
/* (LaTeX definitions have not been written for this file.) */

/* Definitions for HTML output of various Metamath commands. */

/* Title */
htmltitle "Wolfram Axiom for BA";

/* Home page link */
htmlhome '<A HREF="mmwba.html"><FONT SIZE=-2 FACE=sans-serif>' +
    '<IMG SRC="mm.gif" BORDER=0 ALT=' +
    '"Home Page" HEIGHT=32 WIDTH=32 ALIGN=MIDDLE>' +
    'Home</FONT></A>';

/* Optional file where bibliographic references are kept */
htmlbibliography "mmwba.html";

/* Variable color key */
htmlvarcolor '<FONT COLOR="#CC4400">term</FONT>';


/* GIF and Symbol Font HTML directories */
htmldir "../wbagif/";
althtmldir "../wbauni/";


/* Symbol definitions */
htmldef "a" as "<IMG SRC='_ba.gif' WIDTH=9 HEIGHT=19 ALT='a' ALIGN=TOP>";
htmldef "b" as "<IMG SRC='_bb.gif' WIDTH=8 HEIGHT=19 ALT='b' ALIGN=TOP>";
htmldef "c" as "<IMG SRC='_bc.gif' WIDTH=7 HEIGHT=19 ALT='c' ALIGN=TOP>";
htmldef "d" as "<IMG SRC='_bd.gif' WIDTH=9 HEIGHT=19 ALT='d' ALIGN=TOP>";
htmldef "e" as "<IMG SRC='_be.gif' WIDTH=8 HEIGHT=19 ALT='e' ALIGN=TOP>";
htmldef "f" as "<IMG SRC='_bf.gif' WIDTH=9 HEIGHT=19 ALT='f' ALIGN=TOP>";
htmldef "g" as "<IMG SRC='_bg.gif' WIDTH=9 HEIGHT=19 ALT='g' ALIGN=TOP>";
htmldef "h" as "<IMG SRC='_bh.gif' WIDTH=10 HEIGHT=19 ALT='h' ALIGN=TOP>";
htmldef "i" as "<IMG SRC='_browni.gif' WIDTH=6 HEIGHT=19 ALT='i' ALIGN=TOP>";
htmldef "j" as "<IMG SRC='_bj.gif' WIDTH=7 HEIGHT=19 ALT='j' ALIGN=TOP>";
htmldef "k" as "<IMG SRC='_bk.gif' WIDTH=9 HEIGHT=19 ALT='k' ALIGN=TOP>";
htmldef "l" as "<IMG SRC='_bl.gif' WIDTH=6 HEIGHT=19 ALT='l' ALIGN=TOP>";
htmldef "m" as "<IMG SRC='_bm.gif' WIDTH=14 HEIGHT=19 ALT='m' ALIGN=TOP>";
htmldef "n" as "<IMG SRC='_bn.gif' WIDTH=10 HEIGHT=19 ALT='n' ALIGN=TOP>";
htmldef "p" as "<IMG SRC='_bp.gif' WIDTH=10 HEIGHT=19 ALT='p' ALIGN=TOP>";
htmldef "q" as "<IMG SRC='_bq.gif' WIDTH=8 HEIGHT=19 ALT='q' ALIGN=TOP>";
htmldef "r" as "<IMG SRC='_br.gif' WIDTH=8 HEIGHT=19 ALT='r' ALIGN=TOP>";
htmldef "t" as "<IMG SRC='_bt.gif' WIDTH=7 HEIGHT=19 ALT='t' ALIGN=TOP>";
htmldef "u" as "<IMG SRC='_bu.gif' WIDTH=10 HEIGHT=19 ALT='u' ALIGN=TOP>";
htmldef "w" as "<IMG SRC='_bw.gif' WIDTH=12 HEIGHT=19 ALT='w' ALIGN=TOP>";
htmldef "x" as "<IMG SRC='_bx.gif' WIDTH=10 HEIGHT=19 ALT='x' ALIGN=TOP>";
htmldef "y" as "<IMG SRC='_by.gif' WIDTH=9 HEIGHT=19 ALT='y' ALIGN=TOP>";
htmldef "z" as "<IMG SRC='_bz.gif' WIDTH=9 HEIGHT=19 ALT='z' ALIGN=TOP>";
htmldef "(" as "<IMG SRC='lp.gif' WIDTH=5 HEIGHT=19 ALT='(' ALIGN=TOP>";
htmldef ")" as "<IMG SRC='rp.gif' WIDTH=5 HEIGHT=19 ALT=')' ALIGN=TOP>";
htmldef "=" as " <IMG SRC='eq.gif' WIDTH=12 HEIGHT=19 ALT='=' ALIGN=TOP> ";
htmldef "==" as " <IMG SRC='equiv.gif' WIDTH=12 HEIGHT=19 ALT='=='" +
  " ALIGN=TOP> ";
htmldef "v" as " <IMG SRC='cup.gif' WIDTH=10 HEIGHT=19 ALT='v' ALIGN=TOP> ";
htmldef "^" as " <IMG SRC='cap.gif' WIDTH=10 HEIGHT=19 ALT='^' ALIGN=TOP> ";
htmldef "0" as "<IMG SRC='0.gif' WIDTH=8 HEIGHT=19 ALT='0' ALIGN=TOP>";
htmldef "1" as "<IMG SRC='1.gif' WIDTH=7 HEIGHT=19 ALT='1' ALIGN=TOP>";
/* htmldef "-" as "<IMG SRC='shortminus.gif' WIDTH=8 HEIGHT=19 ALT='-'" +
  " ALIGN=TOP>"; */
/* htmldef "_|_" as " <IMG SRC='perp.gif' WIDTH=11 HEIGHT=19 ALT='_|_'" +
  " ALIGN=TOP> "; */
htmldef "'" as "<IMG SRC='supperp.gif' WIDTH=9 HEIGHT=19 ALT=" +
   '"' + "'" + '"' + " ALIGN=TOP>";
htmldef "wff" as "<IMG SRC='_wff.gif' WIDTH=24 HEIGHT=19 ALT='wff'" +
  " ALIGN=TOP> ";
htmldef "term" as "<IMG SRC='_term.gif' WIDTH=32 HEIGHT=19 ALT='term'" +
  " ALIGN=TOP> ";
/* Mladen wants the turnstile to go away 2/9/02 */
/*htmldef "|-" as "<IMG SRC='_vdash.gif' WIDTH=10 HEIGHT=19 ALT='|-'" +
  " ALIGN=TOP> ";*/
htmldef "|-" as "";
htmldef "C" as " <IMG SRC='cc.gif' WIDTH=12 HEIGHT=19 ALT='C' ALIGN=TOP> ";
htmldef "," as "<IMG SRC='comma.gif' WIDTH=4 HEIGHT=19 ALT=',' ALIGN=TOP> ";
htmldef "=<" as " <IMG SRC='le.gif' WIDTH=11 HEIGHT=19 ALT='=&lt;'" +
  " ALIGN=TOP> ";
htmldef "=<2" as " <IMG SRC='_le2.gif' WIDTH=17 HEIGHT=19 ALT='=&lt;2'" +
  " ALIGN=TOP> ";
htmldef "->0" as " <IMG SRC='_to0.gif' WIDTH=21 HEIGHT=19 ALT='-&gt;0'" +
  " ALIGN=TOP> ";
htmldef "->1" as " <IMG SRC='_to1.gif' WIDTH=19 HEIGHT=19 ALT='-&gt;1'" +
  " ALIGN=TOP> ";
htmldef "->2" as " <IMG SRC='_to2.gif' WIDTH=21 HEIGHT=19 ALT='-&gt;2'" +
  " ALIGN=TOP> ";
htmldef "->3" as " <IMG SRC='_to3.gif' WIDTH=21 HEIGHT=19 ALT='-&gt;3'" +
  " ALIGN=TOP> ";
htmldef "->4" as " <IMG SRC='_to4.gif' WIDTH=20 HEIGHT=19 ALT='-&gt;4'" +
  " ALIGN=TOP> ";
htmldef "->5" as " <IMG SRC='_to5.gif' WIDTH=20 HEIGHT=19 ALT='-&gt;5'" +
  " ALIGN=TOP> ";
htmldef "<->1" as " <IMG SRC='_bi1.gif' WIDTH=19 HEIGHT=19" +
  " ALT='&lt;-&gt;1' ALIGN=TOP> ";
htmldef "<->3" as " <IMG SRC='_bi3.gif' WIDTH=21 HEIGHT=19" +
  " ALT='&lt;-&gt;3' ALIGN=TOP> ";
htmldef "u3" as " <IMG SRC='_cup3.gif' WIDTH=16 HEIGHT=19 ALT='u3'" +
  " ALIGN=TOP> ";
htmldef "^3" as " <IMG SRC='_cap3.gif' WIDTH=16 HEIGHT=19 ALT='^3'" +
  " ALIGN=TOP> ";
htmldef "==0" as " <IMG SRC='_equiv0.gif' WIDTH=18 HEIGHT=19 ALT='==0'" +
  " ALIGN=TOP> ";
htmldef "==1" as " <IMG SRC='_equiv1.gif' WIDTH=16 HEIGHT=19 ALT='==1'" +
  " ALIGN=TOP> ";
htmldef "==2" as " <IMG SRC='_equiv2.gif' WIDTH=18 HEIGHT=19 ALT='==2'" +
  " ALIGN=TOP> ";
htmldef "==3" as " <IMG SRC='_equiv3.gif' WIDTH=18 HEIGHT=19 ALT='==3'" +
  " ALIGN=TOP> ";
htmldef "==4" as " <IMG SRC='_equiv4.gif' WIDTH=18 HEIGHT=19 ALT='==4'" +
  " ALIGN=TOP> ";
htmldef "==5" as " <IMG SRC='_equiv5.gif' WIDTH=18 HEIGHT=19 ALT='==5'" +
  " ALIGN=TOP> ";
htmldef "==OA" as " <IMG SRC='_oa.gif' WIDTH=26 HEIGHT=19 ALT='==OA'" +
  " ALIGN=TOP> ";
/*
htmldef "==u" as '<FONT FACE="Symbol"> &#186;</FONT ><I><SUB>u</SUB> </I>';
htmldef "u.u" as '<FONT FACE="Symbol"> &#218;</FONT ><I><SUB>u</SUB> </I>';
htmldef "^u" as '<FONT FACE="Symbol"> &#217;</FONT ><I><SUB>u</SUB> </I>';
htmldef "-u" as '<FONT FACE="Symbol"> &#216;</FONT ><I><SUB>u</SUB> </I>';
htmldef "=<u" as '<FONT FACE="Symbol"> &#163;</FONT ><I><SUB>u</SUB> </I>';
htmldef "=" as '<FONT FACE="Symbol"> = </FONT>';
*/


/* Definitions for Unicode version */
althtmldef "a" as '<I><FONT COLOR="#CC4400">a</FONT></I>';
althtmldef "b" as '<I><FONT COLOR="#CC4400">b</FONT></I>';
althtmldef "c" as '<I><FONT COLOR="#CC4400">c</FONT></I>';
althtmldef "d" as '<I><FONT COLOR="#CC4400">d</FONT></I>';
althtmldef "e" as '<I><FONT COLOR="#CC4400">e</FONT></I>';
althtmldef "f" as '<I><FONT COLOR="#CC4400">f</FONT></I>';
althtmldef "g" as '<I><FONT COLOR="#CC4400">g</FONT></I>';
althtmldef "h" as '<I><FONT COLOR="#CC4400">h</FONT></I>';
althtmldef "i" as '<I><FONT COLOR="#CC4400">i</FONT></I>';
althtmldef "j" as '<I><FONT COLOR="#CC4400">j</FONT></I>';
althtmldef "k" as '<I><FONT COLOR="#CC4400">k</FONT></I>';
althtmldef "l" as '<I><FONT COLOR="#CC4400">l</FONT></I>';
althtmldef "m" as '<I><FONT COLOR="#CC4400">m</FONT></I>';
althtmldef "n" as '<I><FONT COLOR="#CC4400">n</FONT></I>';
althtmldef "p" as '<I><FONT COLOR="#CC4400">p</FONT></I>';
althtmldef "q" as '<I><FONT COLOR="#CC4400">q</FONT></I>';
althtmldef "r" as '<I><FONT COLOR="#CC4400">r</FONT></I>';
althtmldef "t" as '<I><FONT COLOR="#CC4400">t</FONT></I>';
althtmldef "u" as '<I><FONT COLOR="#CC4400">u</FONT></I>';
althtmldef "w" as '<I><FONT COLOR="#CC4400">w</FONT></I>';
althtmldef "x" as '<I><FONT COLOR="#CC4400">x</FONT></I>';
althtmldef "y" as '<I><FONT COLOR="#CC4400">y</FONT></I>';
althtmldef "z" as '<I><FONT COLOR="#CC4400">z</FONT></I>';
althtmldef "(" as '(';
althtmldef ")" as ')';
althtmldef "=" as ' = '; /* &equals; */
althtmldef "==" as ' &equiv; ';
althtmldef "v" as ' &cup; ';
althtmldef "^" as ' &cap; ';
althtmldef "1" as '1';
althtmldef "0" as '0';
/* althtmldef "-" as ' - '; */
/* althtmldef "'" as '&#8869;'; */
althtmldef "'" as '<SUP>&#8869;</SUP> ';
althtmldef "wff" as '<FONT COLOR="#00CC00">wff&nbsp; </FONT>';
althtmldef "term" as '<FONT COLOR="#00CC00">term&nbsp; </FONT>';
/* Mladen wants the turnstile to go away 2/9/02 */
/*althtmldef "|-" as '<FONT COLOR="#00CC00">|-&nbsp; </FONT>';*/
althtmldef "|-" as '';
althtmldef "C" as '<I> C </I>';
althtmldef "," as ', ';
althtmldef "=<" as ' &le; ';
althtmldef "=<2" as ' &le;<SUB>2 </SUB>';
althtmldef "->0" as ' &rarr;<SUB>0 </SUB>';
althtmldef "->1" as ' &rarr;<SUB>1 </SUB>';
althtmldef "->2" as ' &rarr;<SUB>2 </SUB>';
althtmldef "->3" as ' &rarr;<SUB>3 </SUB>';
althtmldef "->4" as ' &rarr;<SUB>4 </SUB>';
althtmldef "->5" as ' &rarr;<SUB>5 </SUB>';
althtmldef "<->1" as ' &harr;<SUB>1 </SUB> ';
althtmldef "<->3" as ' &harr;<SUB>3 </SUB> ';
althtmldef "u3" as ' &cup;<SUB>3 </SUB> ';
althtmldef "^3" as ' &cap;<SUB>3 </SUB> ';
althtmldef "==0" as ' &equiv;<SUB>0 </SUB> ';
althtmldef "==1" as ' &equiv;<SUB>1 </SUB>';
althtmldef "==2" as ' &equiv;<SUB>2 </SUB>';
althtmldef "==3" as ' &equiv;<SUB>3 </SUB>';
althtmldef "==4" as ' &equiv;<SUB>4 </SUB>';
althtmldef "==5" as ' &equiv;<SUB>5 </SUB>';
althtmldef "==OA" as ' &equiv;<SUB>OA </SUB>';
/*
althtmldef "==u" as ' &equiv;<I><SUB>u</SUB> </I>';
althtmldef "u.u" as ' &middot;<I><SUB>u</SUB> </I>';
althtmldef "^u" as ' &cap;<I><SUB>u</SUB> </I>';
althtmldef "-u" as ' &minus;<I><SUB>u</SUB> </I>';
althtmldef "=<u" as ' &le;<I><SUB>u</SUB> </I>';
althtmldef "=" as ' = ';
*/
/* End of Unicode defintions */


latexdef "a" as "a";
latexdef "b" as "b";
latexdef "c" as "c";
latexdef "d" as "d";
latexdef "e" as "e";
latexdef "f" as "f";
latexdef "g" as "g";
latexdef "h" as "h";
latexdef "i" as "i";
latexdef "j" as "j";
latexdef "k" as "k";
latexdef "l" as "l";
latexdef "m" as "m";
latexdef "n" as "n";
latexdef "p" as "p";
latexdef "q" as "q";
latexdef "r" as "r";
latexdef "t" as "t";
latexdef "u" as "u";
latexdef "w" as "w";
latexdef "x" as "x";
latexdef "y" as "y";
latexdef "z" as "z";
latexdef "(" as "(";
latexdef ")" as ")";
latexdef "=" as "=";
latexdef "==" as "\equiv ";
latexdef "v" as "\vee ";
latexdef "^" as "\wedge ";
latexdef "0" as "0";
latexdef "1" as "1";
latexdef "'" as "'";
latexdef "wff" as "{\rm wff}";
latexdef "term" as "{\rm term}";
latexdef "|-" as "";
latexdef "C" as "C";
latexdef "," as ",";
latexdef "=<" as "\le ";
latexdef "=<2" as "\le_2";
latexdef "->0" as "\to_0";
latexdef "->1" as "\to_1";
latexdef "->2" as "\to_2";
latexdef "->3" as "\to_3";
latexdef "->4" as "\to_4";
latexdef "->5" as "\to_5";
latexdef "<->1" as "\leftrightarrow_1";
latexdef "<->3" as "\leftrightarrow_3";
latexdef "u3" as "\vee_3";
latexdef "^3" as "\wedge_3";
latexdef "==0" as "\equiv_0";
latexdef "==1" as "\equiv_1";
latexdef "==2" as "\equiv_2";
latexdef "==3" as "\equiv_3";
latexdef "==4" as "\equiv_4";
latexdef "==5" as "\equiv_5";
latexdef "==OA" as "\equiv_{\mathrm{OA}}";

htmldef "|" as " <IMG SRC='vert.gif' WIDTH=3 HEIGHT=19 ALT=' |' TITLE='|'> ";
  althtmldef "|" as ' &#8739; '; /* &vertbar; */
    /* 2-Jan-2016 reverted sans-serif */
  latexdef "|" as "|";

/* End of typesetting definition section */
$)

  $( Unused constants to satisfy the htmldef's in the $ t comment. $)
  $c == v ^ 1 0 ' C =< =<2 ->0 ->1 ->2 ->3 ->4 ->5 ==0 ==1 ==2 ==3 ==4 ==5
    ==OA , <->3 <->1 u3 ^3 $.

