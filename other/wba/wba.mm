$( Extracted from:  wba.raw.mm 10-Oct-2021 $)
$( Created 10-Oct-2021 6:03 PM using "READ 'wba.raw.mm'" then
   "WRITE SOURCE 'wba.mm' /EXTRACT weq,T1,T2,T3,nksT1,nksT2,nksT3" $)

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
      ( tshef shefeq1 ) ACGDGBCGDGEACGBCGDABCFHHH $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 6-Oct-2021.) $)
    shefeq112 $p |- ( ( ( c | a ) | d ) | e ) = ( ( ( c | b ) | d ) | e ) $=
      ( tshef shefeq2 shefeq1 ) CAGDGCBGDGECAGCBGDABCFHII $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq121 $p |- ( ( d | ( a | c ) ) | e ) = ( ( d | ( b | c ) ) | e ) $=
      ( tshef shefeq1 shefeq2 ) DACGGDBCGGEACGBCGDABCFHIH $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq211 $p |- ( e | ( ( a | c ) | d ) ) = ( e | ( ( b | c ) | d ) ) $=
      ( tshef shefeq1 shefeq2 ) ACGDGBCGDGEACGBCGDABCFHHI $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq212 $p |- ( e | ( ( c | a ) | d ) ) = ( e | ( ( c | b ) | d ) ) $=
      ( tshef shefeq2 shefeq1 ) CAGDGCBGDGECAGCBGDABCFHIH $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq221 $p |- ( e | ( d | ( a | c ) ) ) = ( e | ( d | ( b | c ) ) ) $=
      ( tshef shefeq1 shefeq2 ) DACGGDBCGGEACGBCGDABCFHII $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 6-Oct-2021.) $)
    shefeq222 $p |- ( e | ( d | ( c | a ) ) ) = ( e | ( d | ( c | b ) ) ) $=
      ( tshef shefeq2 ) DCAGGDCBGGECAGCBGDABCFHHH $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 6-Oct-2021.) $)
    shefeq1112 $p |- ( ( ( ( c | a ) | d ) | e ) | f )
        = ( ( ( ( c | b ) | d ) | e ) | f ) $=
      ( tshef shefeq2 shefeq1 ) CAHDHEHCBHDHEHFCAHDHCBHDHECAHCBHDABCGIJJJ $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq1211 $p |- ( ( e | ( ( a | c ) | d ) ) | f )
        = ( ( e | ( ( b | c ) | d ) ) | f ) $=
      ( tshef shefeq1 shefeq2 ) EACHDHHEBCHDHHFACHDHBCHDHEACHBCHDABCGIIJI $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 6-Oct-2021.) $)
    shefeq1221 $p |- ( ( e | ( d | ( a | c ) ) ) | f )
        = ( ( e | ( d | ( b | c ) ) ) | f ) $=
      ( tshef shefeq1 shefeq2 ) EDACHHHEDBCHHHFDACHHDBCHHEACHBCHDABCGIJJI $.


    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 5-Oct-2021.) $)
    shefeq2121 $p |- ( f | ( ( d | ( a | c ) ) | e ) )
        = ( f | ( ( d | ( b | c ) ) | e ) ) $=
      ( tshef shefeq1 shefeq2 ) DACHHEHDBCHHEHFDACHHDBCHHEACHBCHDABCGIJIJ $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 6-Oct-2021.) $)
    shefeq2211 $p |- ( f | ( e | ( ( a | c ) | d ) ) )
        = ( f | ( e | ( ( b | c ) | d ) ) ) $=
      ( tshef shefeq1 shefeq2 ) EACHDHHEBCHDHHFACHDHBCHDHEACHBCHDABCGIIJJ $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq2212 $p |- ( f | ( e | ( ( c | a ) | d ) ) )
        = ( f | ( e | ( ( c | b ) | d ) ) ) $=
      ( tshef shefeq2 shefeq1 ) ECAHDHHECBHDHHFCAHDHCBHDHECAHCBHDABCGIJII $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 5-Oct-2021.) $)
    shefeq2221 $p |- ( f | ( e | ( d | ( a | c ) ) ) )
        = ( f | ( e | ( d | ( b | c ) ) ) ) $=
      ( tshef shefeq1 shefeq2 ) EDACHHHEDBCHHHFDACHHDBCHHEACHBCHDABCGIJJJ $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq2222 $p |- ( f | ( e | ( d | ( c | a ) ) ) )
        = ( f | ( e | ( d | ( c | b ) ) ) ) $=
      ( tshef shefeq2 ) EDCAHHHEDCBHHHFDCAHHDCBHHECAHCBHDABCGIIII $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 5-Oct-2021.) $)
    shefeq21121 $p |- ( g | ( ( ( d | ( a | c ) ) | e ) | f ) )
        = ( g | ( ( ( d | ( b | c ) ) | e ) | f ) ) $=
      ( tshef shefeq1 shefeq2 ) DACIIEIFIDBCIIEIFIGDACIIEIDBCIIEIFDACIIDBCIIEAC
      IBCIDABCHJKJJK $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 5-Oct-2021.) $)
    shefeq21221 $p |- ( g | ( ( e | ( d | ( a | c ) ) ) | f ) )
        = ( g | ( ( e | ( d | ( b | c ) ) ) | f ) ) $=
      ( tshef shefeq1 shefeq2 ) EDACIIIFIEDBCIIIFIGEDACIIIEDBCIIIFDACIIDBCIIEAC
      IBCIDABCHJKKJK $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 5-Oct-2021.) $)
    shefeq22111 $p |- ( g | ( f | ( ( ( a | c ) | d ) | e ) ) )
        = ( g | ( f | ( ( ( b | c ) | d ) | e ) ) ) $=
      ( tshef shefeq1 shefeq2 ) FACIDIEIIFBCIDIEIIGACIDIEIBCIDIEIFACIDIBCIDIEAC
      IBCIDABCHJJJKK $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 6-Oct-2021.) $)
    shefeq22112 $p |- ( g | ( f | ( ( ( c | a ) | d ) | e ) ) )
        = ( g | ( f | ( ( ( c | b ) | d ) | e ) ) ) $=
      ( tshef shefeq2 shefeq1 ) FCAIDIEIIFCBIDIEIIGCAIDIEICBIDIEIFCAIDICBIDIECA
      ICBIDABCHJKKJJ $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 5-Oct-2021.) $)
    shefeq22121 $p |- ( g | ( f | ( ( d | ( a | c ) ) | e ) ) )
        = ( g | ( f | ( ( d | ( b | c ) ) | e ) ) ) $=
      ( tshef shefeq1 shefeq2 ) FDACIIEIIFDBCIIEIIGDACIIEIDBCIIEIFDACIIDBCIIEAC
      IBCIDABCHJKJKK $.


    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 5-Oct-2021.) $)
    shefeq221121 $p |- ( h | ( g | ( ( ( d | ( a | c ) ) | e ) | f ) ) )
        = ( h | ( g | ( ( ( d | ( b | c ) ) | e ) | f ) ) ) $=
      ( tshef shefeq1 shefeq2 ) GDACJJEJFJJGDBCJJEJFJJHDACJJEJFJDBCJJEJFJGDACJJ
      EJDBCJJEJFDACJJDBCJJEACJBCJDABCIKLKKLL $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 1-Oct-2021.) $)
    shefeq221221 $p |- ( h | ( g | ( ( e | ( d | ( a | c ) ) ) | f ) ) )
        = ( h | ( g | ( ( e | ( d | ( b | c ) ) ) | f ) ) ) $=
      ( tshef shefeq1 shefeq2 ) GEDACJJJFJJGEDBCJJJFJJHEDACJJJFJEDBCJJJFJGEDACJ
      JJEDBCJJJFDACJJDBCJJEACJBCJDABCIKLLKLL $.

    $( Chain of ~ shefeq1 and/or ~ shefeq2 applications to simplify proof
       displays.  (Contributed by NM, 6-Oct-2021.) $)
    shefeq222121 $p |- ( h | ( g | ( f | ( ( d | ( a | c ) ) | e ) ) ) )
        = ( h | ( g | ( f | ( ( d | ( b | c ) ) | e ) ) ) ) $=
      ( tshef shefeq1 shefeq2 ) GFDACJJEJJJGFDBCJJEJJJHFDACJJEJJFDBCJJEJJGDACJJ
      EJDBCJJEJFDACJJDBCJJEACJBCJDABCIKLKLLL $.
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


$(
###############################################################################
        NEW DERIVATION OF THE SHEFFER BA AXIOMS FROM THE WOLFRAM AXIOM
###############################################################################
$)


$(
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
         Lemmas L1 through L12 towards proving first Sheffer axiom
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
$)

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L1 $p |- ( ( a | b ) | ( ( ( c | d ) | a ) | ( ( ( ( c | d ) | a ) | b ) | ( ( c | d ) | a ) ) ) ) = b $=
    ( tshef ax-A eqcom shefeq11 eqtr ) ABECDEAECDEAEBECDEAEEEECDEAECCAECEEEBECD
    EAECDEAEBECDEAEEEEBACDEAECCAECEEEBCDEAECDEAEBECDEAEEECDEAECCAECEEEAACDFGHBC
    DEAECCAECEEFI $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L2 $p |- ( ( a | b ) | ( ( c | a ) | ( ( ( c | a ) | b ) | ( c | a ) ) ) ) = b $=
    ( wvx wvy tshef L1 eqcom shefeq11 ax-A eqtr ) ABFCAFCAFBFCAFFFFCAFDEFCFDEFC
    FAFDEFCFFFFBFCAFCAFBFCAFFFFBACAFDEFCFDEFCFAFDEFCFFFFBCAFCAFBFCAFFFCAFDEFCFD
    EFCFAFDEFCFFFFACADEGHIBCAFDEFCFDEFCFAFDEFCFFFJK $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L3 $p |- ( ( a | ( b | ( ( b | a ) | b ) ) ) | ( ( ( b | c ) | a ) | ( a | ( ( b | c ) | a ) ) ) ) = ( b | ( ( b | a ) | b ) ) $=
    ( tshef ax-A eqcom shefeq221 L2 eqtr ) ABBADBDDDBCDADABCDADDDDABBADBDDDBCDA
    DBCDADBBADBDDDBCDADDDDBBADBDDABCDADBBADBDDDBCDADBCDADABBADBDDDBCDADBBADBDDD
    AABCEFGABBADBDDBCDHI $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L4 $p |- ( a | ( ( b | c ) | ( ( ( b | c ) | ( b | ( ( b | a ) | b ) ) ) | ( b | c ) ) ) ) = ( b | ( ( b | a ) | b ) ) $=
    ( tshef ax-A eqcom shefeq1 eqtr ) ABCDBCDBBADBDDDBCDDDDBCDADBBADBDDDBCDBCDB
    BADBDDDBCDDDDBBADBDDABCDADBBADBDDDBCDBCDBBADBDDDBCDDDBCDADBBADBDDDAABCEFGBB
    ADBDDBCDAEH $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L5 $p |- ( ( ( a | ( ( a | b ) | a ) ) | c ) | ( b | ( ( b | c ) | b ) ) ) = c $=
    ( wvx tshef L4 eqcom shefeq11 ax-A eqtr ) AABEAEECEBBCEBEEEBADEADEAABEAEEEA
    DEEEECEBBCEBEEECAABEAEEBADEADEAABEAEEEADEEEECBBCEBEEBADEADEAABEAEEEADEEEEAA
    BEAEEBADFGHCBADEADEAABEAEEEADEEEIJ $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L6 $p |- ( a | ( ( b | ( ( b | c ) | b ) ) | ( ( ( b | ( ( b | c ) | b ) ) | ( c | ( ( c | a ) | c ) ) ) | ( b | ( ( b | c ) | b ) ) ) ) ) = ( c | ( ( c | a ) | c ) ) $=
    ( tshef L5 eqcom shefeq1 ax-A eqtr ) ABBCDBDDBBCDBDDCCADCDDDBBCDBDDDDDBBCDB
    DDADCCADCDDDBBCDBDDBBCDBDDCCADCDDDBBCDBDDDDDCCADCDDABBCDBDDADCCADCDDDBBCDBD
    DBBCDBDDCCADCDDDBBCDBDDDDBBCDBDDADCCADCDDDABCAEFGCCADCDDBBCDBDDAHI $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L7 $p |- ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) = ( a | ( ( a | a ) | a ) ) $=
    ( tshef ax-A eqcom shefeq2 L3 eqtr ) AAAABABBBABAAAABABBBAABABAAABABBBBAAAB
    ABBAAABABAAABABBBAAAABABBBAABABAAABABBBAAAACDEAAAFG $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L8 $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) = a $=
    ( tshef L7 eqcom shefeq1 ax-A eqtr ) AAABABBAAABABBBAAAABABBBABAAABABBBAAAA
    BABBAAAABABBBABAAABABBAAAABABBBABAAABABBACDEAAAAABABBFG $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L9 $p |- ( ( a | b ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | b ) | ( a | ( ( a | a ) | a ) ) ) ) ) = b $=
    ( tshef L8 eqcom shefeq11 ax-A eqtr ) ABCAAACACCAAACACCBCAAACACCCCCAAACACCA
    AACACCCBCAAACACCAAACACCBCAAACACCCCCBAAAACACCAAACACCCBAAACACCAAACACCBCAAACAC
    CCCAAACACCAAACACCCAADEFBAAACACCAAACACCGH $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L10 $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) = a $=
    ( tshef L6 eqcom L9 shefeq221 L7 shefeq212 L3 shefeq2 ax-A eq5tr ) AAABABBA
    AABABBAAAABABBBABBAAABABBBBAAAABABBBABAAAAABABBBABBAAAAABABBBABBAAABABBAAAB
    ABBAAAABABBBABBAAABABBBBBAAAAABABBBABBBBBAAAABABBBABAAAAABABBBABBAAAABABBBA
    BAAAAABABBBABBBBBAAAABABBBABAAAABABBBAAAABABBBABAAAAABABBBABBBBBAAAABABBBAB
    AAABABBBAAAAABABBBABAAAAABABBBABBAAAAABABBBABBAAABABBAAABABBAAAABABBBABBAAA
    BABBBBBAAAAABABBBABBBBBAAABABBAAABABBAAAABABBBABBAAABABBBBAAAABABBBABAAAABA
    BBCDAAAAABABBBABBAAABABBAAABABBAAAABABBBABBAAABABBBBBAAAABABBBABAAAAABABBBA
    BBAAAAABABBBABBAAAABABBBABAAAAABABBBABEFAAAABABBBABAAABABBAAAAABABBBABAAAAA
    BABBBABBBAAAABABBBABAGHAAAABABBBAAAABABBBABAAAAABABBBABBBBAAABABBAAAABABBBA
    BAAAAABABBIJAAAAABABBKL $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L11 $p |- ( a | ( ( a | a ) | a ) ) = ( a | a ) $=
    ( tshef L4 eqcom L7 shefeq2212 L10 shefeq2 eq3tr ) AAABABBAAAABABBAAABABBAA
    ABABBBAAABABBBBBAAAABABBAAABABBAAAABABBBABBAAABABBBBBAABAAAABABBAAABABBAAAB
    ABBBAAABABBBBBAAABABBAAAABABCDAAAABABBAAABABBAAAABABBBABBAAABABBBBBAAAABABB
    AAABABBAAABABBBAAABABBBBBAAAABABBBABAAABABBAAABABBAAABABBAAABABBAAEFDAAABAB
    BAAABABBAAAABABBBABBAAABABBBBAAAGHI $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L12 $p |- ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) = a $=
    ( tshef L11 eqcom shefeq1 L8 eqtr ) AABAAABABBBAAABABBAAABABBBAAABAAABABBAA
    ABABBAAABABBAABACDEAFG $.


$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
           First Sheffer axiom for BA
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)

  $( First Sheffer axiom for a Boolean algebra.  (Contributed by NM and RV,
     1-Oct-2021.) $)
  T1 $p |- ( ( a | a ) | ( a | a ) ) = a $=
    ( tshef L11 eqcom shefeq2 L12 eqtr ) AABAABBAABAAABABBBAAABAAABABBAABAAABAB
    BAABACDEAFG $.



$(
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
         Lemmas L13 through L46 towards proving second Sheffer axiom
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
$)

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L13 $p |- ( a | ( b | ( ( b | ( ( c | b ) | ( ( ( c | b ) | a ) | ( c | b ) ) ) ) | b ) ) ) = ( ( c | b ) | ( ( ( c | b ) | a ) | ( c | b ) ) ) $=
    ( tshef L2 eqcom shefeq1 ax-A eqtr ) ABBCBDCBDADCBDDDDBDDDBADCBDCBDADCBDDDD
    BBCBDCBDADCBDDDDBDDDCBDCBDADCBDDDABADCBDCBDADCBDDDDBBCBDCBDADCBDDDDBDDBADCB
    DCBDADCBDDDDABACEFGCBDCBDADCBDDDBAHI $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM, 10-Oct-2021.) $)
  L14 $p |- ( ( ( a | b ) | a ) | ( a | a ) ) = a $=
    ( tshef L11 eqcom shefeq2 ax-A eqtr ) ABCACAACCABCACAAACACCCAAACAAACACCABCA
    CAAACACCAACADEFAABGH $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L15 $p |- ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | b ) ) = b $=
    ( tshef L11 eqcom shefeq2 L5 eqtr ) AABCACCBCBBCCAABCACCBCBBBCBCCCBBBCBBBCB
    CCAABCACCBCBBBCBCCBBCBDEFABBGH $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L16 $p |- ( a | ( ( ( b | ( ( b | a ) | b ) ) | a ) | ( a | ( ( b | ( ( b | a ) | b ) ) | a ) ) ) ) = ( a | a ) $=
    ( tshef ax-A eqcom shefeq2222 shefeq221 shefeq212 shefeq1 L5 L6 L11 eq8tr )
    ABBACBCCACABBACBCCACCCCABBACBCCACABBACBCCBBACBCCACBBACBCCCCCCCABBACBCCACBBA
    CBCCACBBACBCCCBBACBCCBBACBCCACBBACBCCCCCCCABBACBCCBBACBCCACBBACBCCCCBBACBCC
    ACBBACBCCCBBACBCCBBACBCCACBBACBCCCCCCCBBACBCCACBBACBCCCBBACBCCBBACBCCACBBAC
    BCCCCBBACBCCACBBACBCCCBBACBCCBBACBCCACBBACBCCCCCCCBBACBCCACBBACBCCCBBACBCCB
    BACBCCACBBACBCCCCBBACBCCBBACBCCACBBACBCCCCAABBACBCCACBBACBCCCCACCCBBACBCCBB
    ACBCCACBBACBCCCCCCCAABBACBCCACBBACBCCCCACCAAACACCAACABBACBCCACBBACBCCCBBACB
    CCABBACBCCACABBACBCCACBBACBCCCAABBACBCDEFABBACBCCACBBACBCCCBBACBCCBBACBCCAC
    BBACBCCCCBBACBCCACABBACBCCACBBACBCCCAABBACBCDEGABBACBCCACBBACBCCCBBACBCCBBA
    CBCCACBBACBCCCBBACBCCBBACBCCACBBACBCCCCCABBACBCCACBBACBCCCAABBACBCDEHABBACB
    CCACBBACBCCCBBACBCCBBACBCCACBBACBCCCCBBACBCCACBBACBCCCBBACBCCBBACBCCACBBACB
    CCCCCCBBACBCCACBBACBCCCAABBACBCDEIBBACBCCACBBACBCCCBBACBCCBBACBCCACBBACBCCC
    CAABBACBCCACBBACBCCCCACCCBBACBCCBBACBCCACBBACBCCCCBBACBCCBBACBCCACBBACBCCCC
    BBACBCCACBBACBCCCBBACBCCBBACBCCACBBACBCCCCAABBACBCCACBBACBCCCCACCCBBACBCCAC
    BBACBCCCBABBACBCCACBBACBCCCJEGBBACBCCACBBACBCCCBBACBCCAKBBACBCCACBBACBCCCAA
    AAABBACBCDHALM $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L17 $p |- ( ( ( a | ( ( a | b ) | a ) ) | b ) | ( b | ( ( a | ( ( a | b ) | a ) ) | b ) ) ) = b $=
    ( tshef L15 eqcom shefeq21 L13 shefeq221221 L16 shefeq221 L12 eq5tr ) AABCA
    CCBCBAABCACCBCCCAABCACCBCAABCACCBCBBCCAABCACCBCCCBBCBBAABCACCBCAABCACCBCBBC
    CAABCACCBCCCCBCCCBBCBBAABCACCBCBAABCACCBCCCCBCCCBBCBBBCBCCCBBAABCACCBCBBCCA
    ABCACCBCAABCACCBCAABCACCBCBBCCBABDEFBBCBBAABCACCBCAABCACCBCBBCCAABCACCBCCCC
    BCCCAABCACCBCAABCACCBCBBCCAABCACCBCCCBBCBAABCACCGEAABCACCBCBBCCBAABCACCBCAA
    BCACCBCBBBBBCABDHBAABCACCBCBAABCACCBCCCCBBCBBBBCBAIJBKL $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L18 $p |- ( ( a | ( b | ( ( b | a ) | b ) ) ) | a ) = ( b | ( ( b | a ) | b ) ) $=
    ( tshef L17 eqcom shefeq2 L3 eqtr ) ABBACBCCCACABBACBCCCBBACBCCACABBACBCCAC
    CCCBBACBCCABBACBCCACABBACBCCACCCABBACBCCCBBACBCCACABBACBCCACCCABADEFABBACBC
    GH $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L19 $p |- ( ( a | ( ( a | b ) | a ) ) | ( b | b ) ) = b $=
    ( tshef L18 eqcom shefeq1 L14 eqtr ) AABCACCBBCCBAABCACCCBCBBCCBAABCACCBAAB
    CACCCBCBBCBAABCACCCBCAABCACCBADEFBAABCACCGH $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L20 $p |- ( a | ( b | ( ( b | ( a | a ) ) | b ) ) ) = ( a | a ) $=
    ( tshef L19 eqcom shefeq1 ax-A eqtr ) ABBAACCBCCCBBACBCCAACCBBAACCBCCCAACAB
    BACBCCAACCBBAACCBCCBBACBCCAACCABADEFAACBBACBCGH $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L21 $p |- ( ( a | b ) | ( ( ( a | b ) | ( b | b ) ) | ( a | b ) ) ) = b $=
    ( tshef L13 eqcom L20 shefeq221 L12 eq3tr ) ABCABCBBCCABCCCBBCBBABCABCBBCCA
    BCCCCBCCCBBCBBBCBCCCBBBCBBABCABCBBCCABCCCCBCCCABCABCBBCCABCCCBBCBADEBABCABC
    BBCCABCCCCBBCBBBBCBABCFGBHI $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L22 $p |- ( ( ( a | b ) | a ) | ( a | ( ( a | b ) | a ) ) ) = a $=
    ( tshef L14 eqcom shefeq21 L21 eqtr ) ABCACAABCACCCABCACABCACAACCABCACCCAAA
    BCACAACCABCACABCACABCACAACCAABDEFABCAGH $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L23 $p |- ( ( a | ( b | a ) ) | ( ( b | a ) | ( b | a ) ) ) = ( b | a ) $=
    ( tshef L11 eqcom shefeq2 L2 eqtr ) ABACCBACBACCCABACCBACBACBACCBACCCCBACBA
    CBACCBACBACBACCBACCCABACCBACBACBACCBACCCBACBACCBACDEFABACBGH $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L24 $p |- ( ( a | ( ( a | b ) | a ) ) | a ) = ( ( a | b ) | a ) $=
    ( tshef L22 eqcom shefeq2 L23 shefeq21 L21 eq3tr ) AABCACCACAABCACCABCACAAB
    CACCCCAABCACCAABCACCABCACABCACCCAABCACCCCABCACAABCACAABCACCCAABCACCABCACAAB
    CACCCAABDEFABCACAABCACCABCACABCACCCAABCACCAABCACCAABCACCABCACABCACCCABCACAA
    BCGEHAABCACIJ $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L25 $p |- ( ( a | ( b | a ) ) | a ) = ( b | a ) $=
    ( tshef L21 eqcom shefeq2 shefeq11 L24 shefeq22 L22 eq4tr ) ABACCACABACCBAC
    BACAACCBACCCCBACBACAACCBACCCBACCBACBACAACCBACCCCBACBACAACCBACCCBACCBACBACBA
    CAACCBACCCBACCCCBACABACBACAACCBACCCABACCBACBACAACCBACCCABADEFABACBACAACCBAC
    CCBACBACBACAACCBACCCBACBACAACCBACCCABADEGBACAACCBACCBACBACAACCBACCCBACCBACB
    ACBACAACCBACCCBACCBACBACAACCBACCCBACCBACAACCBACCBACAACHEIBACBACAACCBACCJK
    $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L26 $p |- ( ( a | b ) | ( b | b ) ) = b $=
    ( tshef L25 eqcom shefeq1 L14 eqtr ) ABCBBCCBABCCBCBBCCBABCBABCCBCBBCBABCCB
    CABCBADEFBABCGH $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L27 $p |- ( ( a | b ) | ( b | ( a | b ) ) ) = b $=
    ( tshef L26 eqcom shefeq21 L21 eqtr ) ABCBABCCCABCABCBBCCABCCCBBABCBBCCABCA
    BCABCBBCCBABDEFABGH $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L28 $p |- ( ( a | ( a | ( b | a ) ) ) | a ) = ( a | ( b | a ) ) $=
    ( tshef L27 eqcom shefeq2 L25 shefeq22 L2 eq3tr ) AABACCCACAABACCCBACABACCC
    CAABACCCBACBACABACCCBACCCCABACCABACABACCCAABACCCBACABACCCABADEFABACCBACABAC
    CCBACCBACAABACCCBACABACCCBACCABACCBACAGEHAABACCBIJ $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L29 $p |- ( a | ( ( b | a ) | ( b | a ) ) ) = ( b | a ) $=
    ( tshef L21 eqcom shefeq1 L28 L26 eq3tr ) ABACBACCCBACBACAACCBACCCBACBACCCB
    ACBACBACAACCBACCCCBACCBACBACCCBACABACBACAACCBACCCBACBACCBACBACAACCBACCCABAD
    EFBACBACAACCBACCCBACBACBACAACCBACCCCBACCBACBACCBACBACBACAACCBACCCCBACCBACBA
    CAACCBACCCBACBACAACCGEFBACBACBACAACCBACCCCBACHI $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L30 $p |- ( ( ( a | b ) | c ) | ( b | ( ( b | c ) | b ) ) ) = c $=
    ( tshef L29 eqcom shefeq11 ax-A eqtr ) ABDCDBBCDBDDDBABDABDDDCDBBCDBDDDCABD
    BABDABDDDCBBCDBDDBABDABDDDABDBAEFGCBABDABDDHI $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L31 $p |- ( a | ( ( a | b ) | a ) ) = ( b | a ) $=
    ( tshef ax-A eqcom L30 shefeq1 L27 shefeq221 shefeq2 eq4tr ) AABCACCABCACBC
    AABCACCCABCACABCACAABCACCCABCACCCCBABCACABCACAABCACCCABCACCCCBABCACAABCACCC
    CBACABCACBCAABCACCCABCACABCACAABCACCCABCACCCCAABCACCAABCACCABCACBDEABCACBCA
    ABCACCCBABCACABCACAABCACCCABCACCCABCABFGABCACAABCACCCAABCACABCACBABCAHIABCA
    CAABCACCCABABCAHJK $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L32 $p |- ( ( ( a | b ) | c ) | ( c | a ) ) = c $=
    ( tshef L31 eqcom shefeq2 ax-A eqtr ) ABDCDCADDABDCDAACDADDDCCADAACDADDABDC
    DAACDADDCADACEFGCABHI $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L33 $p |- ( ( ( a | b ) | c ) | ( c | b ) ) = c $=
    ( tshef L31 eqcom shefeq2 L30 eqtr ) ABDCDCBDDABDCDBBCDBDDDCCBDBBCDBDDABDCD
    BBCDBDDCBDBCEFGABCHI $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L34 $p |- ( a | ( ( a | b ) | a ) ) = ( a | b ) $=
    ( wvx tshef L32 eqcom shefeq1 L33 eqtr ) AABDADDBCDADABDDABDADDABDABCDADABD
    DABDADBCDADABDDABCAEFGBCDAABDHI $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L35 $p |- ( ( ( a | b ) | c ) | ( a | c ) ) = c $=
    ( tshef L34 eqcom shefeq2 ax-A eqtr ) ABDCDACDDABDCDAACDADDDCACDAACDADDABDC
    DAACDADDACDACEFGCABHI $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L36 $p |- ( a | b ) = ( b | a ) $=
    ( tshef L34 eqcom L31 eqtr ) ABCAABCACCBACAABCACCABCABDEABFG $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L37 $p |- ( ( a | b ) | c ) = ( c | ( b | a ) ) $=
    ( tshef L36 shefeq1 eqtr ) ABDCDBADCDCBADDABDBADCABEFBADCEG $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L38 $p |- ( ( a | b ) | ( a | ( c | b ) ) ) = a $=
    ( tshef L36 shefeq1 L31 eqcom shefeq2 L2 eq3tr ) ABDACBDDDBADACBDDDBADCBDCB
    DADCBDDDDAABDBADACBDDABEFACBDDCBDCBDADCBDDDBADCBDCBDADCBDDDACBDDCBDAGHIBACJ
    K $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L39 $p |- ( ( a | b ) | ( a | a ) ) = a $=
    ( tshef L36 shefeq1 L26 eqtr ) ABCAACCBACAACCAABCBACAACABDEBAFG $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L40 $p |- ( ( a | b ) | ( b | ( a | c ) ) ) = b $=
    ( tshef L39 eqcom shefeq11 L32 eqtr ) ABDBACDDDACDAADDBDBACDDDBAACDAADDBBAC
    DDACDAADDAACEFGACDAADBHI $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L41 $p |- ( a | ( b | ( a | ( b | c ) ) ) ) = ( a | ( b | c ) ) $=
    ( tshef L40 eqcom shefeq1 L35 eqtr ) ABABCDDDDBADABCDDDBABCDDDDABCDDABADABC
    DDDBABCDDDBADABCDDDABACEFGBAABCDDHI $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L42 $p |- ( a | ( ( a | b ) | b ) ) = ( a | a ) $=
    ( tshef L41 eqcom L38 shefeq2 eqtr ) AABCBCCAABCAABCBCCCCAACAABCAABCBCCCCAA
    BCBCCAABCBDEABCAABCBCCCAAABABCFGH $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L43 $p |- ( a | ( b | ( a | b ) ) ) = ( a | a ) $=
    ( tshef L36 shefeq2 L42 eqtr ) ABABCCCAABCBCCAACBABCCABCBCABABCDEABFG $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L44 $p |- ( a | ( b | b ) ) = ( a | ( a | b ) ) $=
    ( tshef L43 eqcom shefeq2 L41 L36 eq3tr ) ABBCCABABACCCCABACCAABCCBBCBABACC
    CABABACCCBBCBADEFABAGBACABCABAHFI $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L45 $p |- ( ( a | b ) | ( a | ( b | c ) ) ) = a $=
    ( tshef L36 shefeq1 L40 eqtr ) ABDABCDDDBADABCDDDAABDBADABCDDABEFBACGH $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L46 $p |- ( ( a | ( a | b ) ) | ( a | ( c | ( b | b ) ) ) ) = a $=
    ( tshef L44 eqcom shefeq1 L38 eqtr ) AABDDACBBDDDDABBDDACBBDDDDAAABDDABBDDA
    CBBDDDABBDDAABDDABEFGABBDCHI $.



$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
           Second Sheffer axiom for BA
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)
  $( Second Sheffer axiom for a Boolean algebra.  (Contributed by NM and RV,
     1-Oct-2021.) $)
  T2 $p |- ( a | ( b | ( b | b ) ) ) = ( a | a ) $=
    ( tshef L33 eqcom L36 shefeq2 L45 L46 shefeq1 eq4tr ) ABBBCCCAABCCABBBCCCCA
    BBBCCCABCCCAABCCABBBCCCCABCABBBCCCCCAABCCABBBCCCCACAACAABCCABBBCCCCABBBCCCA
    BCCCABBBCCCAABCABBBCCCDEABBBCCCABCCABCABBBCCCCAABCCABBBCCCCABCABBBCCCCABBBC
    CCABCCABCABBBCCCFEGABCABBBCCCCAAABCCABBBCCCCABBBCHGAABCCABBBCCCCAAABBIJK $.



$(
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
         Lemmas L47 through L64 towards proving third Sheffer axiom
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
$)

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L47 $p |- ( ( a | a ) | ( a | b ) ) = a $=
    ( tshef L36 L39 eqtr ) AACABCCABCAACCAAACABCDABEF $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L48 $p |- ( ( a | b ) | ( ( a | c ) | b ) ) = b $=
    ( tshef L36 shefeq2 L40 eqtr ) ABDACDBDDABDBACDDDBACDBDBACDDABDACDBEFABCGH
    $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L49 $p |- ( a | ( ( ( b | c ) | a ) | c ) ) = ( ( c | b ) | a ) $=
    ( tshef L36 shefeq211 L48 eqcom shefeq1 L32 eq3tr ) ABCDADCDDACBDADCDDCADCB
    DADDCBDADCDDCBDADBCDCBDACABCEFACADCBDADDCBDADCDCADCBDADDACABGHICACBDADJK $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L50 $p |- ( ( a | a ) | b ) = ( b | ( b | a ) ) $=
    ( tshef L37 L44 eqtr ) AACBCBAACCBBACCAABDBAEF $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L51 $p |- ( ( ( ( a | ( b | c ) ) | d ) | ( b | a ) ) | a ) = ( b | a ) $=
    ( tshef L40 eqcom shefeq2 L32 eqtr ) ABCEEDEBAEEAEABCEEDEBAEEBAEABCEEEEBAEA
    BAEABCEEEABCEEDEBAEEBAEABCEEEABACFGHABCEEDBAEIJ $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L52 $p |- ( ( ( ( a | b ) | c ) | a ) | ( ( d | b ) | a ) ) = a $=
    ( wvx tshef L37 L2 eqcom shefeq2212 L51 shefeq1 L32 eq4tr ) ABFCFAFDBFAFFDB
    FAFAABFCFFFDBFAFAADBFEDFEDFBFEDFFFFFCFFFADBFEDFEDFBFEDFFFFFCFDBFAFFAFAADBFE
    DFEDFBFEDFFFFFCFFFAABFCFADBFAFGBDBFEDFEDFBFEDFFFFACADBFAFDBFEDFEDFBFEDFFFFB
    DBEHIJDBFAFADBFEDFEDFBFEDFFFFFCFDBFAFFAFAADBFEDFEDFBFEDFFFFFCFFADBFEDFEDFBF
    EDFFFFFCFDBFAFFAFDBFAFADBFEDFEDFBFEDFFFCKILADBFEDFEDFBFEDFFFFFCFDBFAFAMN $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L53 $p |- ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) = ( ( ( b | b ) | c ) | ( ( a | b ) | c ) ) $=
    ( tshef L42 eqcom L36 L33 shefeq11 L50 shefeq1 eq4tr ) ABDCDABDCDDABDCDABDC
    DCBDDCBDDDABDCDCBDDCBDDABDCDDCCBDDABDCDDBBDCDABDCDDABDCDABDCDCBDDCBDDDABDCD
    ABDCDDABDCDCBDEFABDCDCBDDCBDDABDCDDABDCDABDCDCBDDCBDDDABDCDCBDDCBDDABDCDGFA
    BDCDCBDDCCBDABDCDABCHICCBDDBBDCDABDCDBBDCDCCBDDBCJFKL $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L54 $p |- ( ( a | a ) | ( ( ( b | a ) | c ) | ( ( b | a ) | c ) ) ) = ( ( a | a ) | c ) $=
    ( tshef L53 shefeq2 L33 eqcom shefeq1 L32 eq3tr ) AADBADCDBADCDDDAADAADCDBA
    DCDDDBADCDAADDAADCDDAADCDBADCDDDAADCDBADCDBADCDDAADCDBADCDDAADBACEFAADBADCD
    AADDAADCDDAADCDBADCDDBADCDAADDAADCDDAADBADCAADGHIBADCDAADAADCDJK $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L55 $p |- ( a | ( ( b | a ) | b ) ) = ( a | a ) $=
    ( tshef L36 shefeq21 L42 eqtr ) ABACBCCAABCBCCAACBACABCBABADEABFG $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L56 $p |- ( ( a | ( ( b | a ) | b ) ) | ( a | c ) ) = a $=
    ( tshef L55 shefeq1 L47 eqtr ) ABADBDDACDDAADACDDAABADBDDAADACDABEFACGH $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L57 $p |- ( ( a | a ) | ( ( b | ( c | a ) ) | b ) ) = a $=
    ( tshef L54 eqcom L56 shefeq2 L36 L47 eq4tr ) AADBCADDBDDAADCADBCADDBDDCADB
    CADDBDDDDAADCADDAADACDDAAADCADBCADDBDDCADBCADDBDDDDAADBCADDBDDACBCADDBDEFCA
    DBCADDBDDCADBCADDBDDDCADAADCADBBCADDBDGHCADACDAADCAIHACJK $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L58 $p |- ( ( a | ( ( ( a | b ) | c ) | c ) ) | a ) = ( ( ( a | b ) | c ) | c ) $=
    ( tshef L49 eqcom shefeq121 L57 shefeq2 L48 shefeq1 eq4tr ) AABDCDCDDADACBA
    DCDADDCDDADACBADCDADDCDDAADCBADCDADDCDDDCBADCDADDCDABDCDCDABDCDCBADCDADDCAA
    CBADCDADDABDCDCBAEFGAAADCBADCDADDCDDACBADCDADDCDDAADCBADCDADDCDDAACBADCDHFI
    ACBADCDADDCDAJCBADCDADDABDCDCCBAEKL $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L59 $p |- ( ( ( a | b ) | c ) | ( ( ( b | c ) | d ) | c ) ) = c $=
    ( tshef L36 shefeq111 L52 eq3tr ) ABECEBCEDECEEBCEDECEABECEECBEDECEABECEECA
    BECEBCEDECEFBCECBEDCABECEBCFGCBDAHI $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L60 $p |- ( ( ( ( ( a | b ) | c ) | a ) | a ) | b ) = ( b | b ) $=
    ( tshef L36 shefeq1 shefeq1211 L59 eqcom shefeq11 L58 L26 shefeq2 L32 eq6tr
    ) ABDCDADADBDAABDCDADDBDABADCDADDBDBBDADBADCDADDBADCDADDBDBBDBBDADBADCDADDB
    ADCDADDDBBDDBDBBDBBDADBADCDADDBADCDADDDBBDDBBDBBDDDBBDABDCDADADAABDCDADDBAB
    DCDADAEFABDBADCAABABEGABBDADBADCDADDBADCDADBBBDADBADCDADDABBACHIJBBDADBADCD
    ADDBADCDADDBBDBBDADBADCDADDBADCDADDDBBDDBBBDBBDADBADCDADDBADCDADDDBBDDBBDAD
    BADCDADDBADCDADDBBDABADCDADKIFBBBDBBDDBBDBBDADBADCDADDBADCDADDDBBDDBBDBBDDB
    BBLIMBBDBBDADBADCDADDBADCDADDBBDNO $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L61 $p |- ( ( ( ( ( a | b ) | c ) | a ) | b ) | a ) = ( a | a ) $=
    ( tshef L35 eqcom L48 shefeq1 L52 shefeq2 eq3tr ) ABDCDADBDADABDCDADADABDCD
    ADBDADDABDCDADABDCDADBDADDDAABDCDADABDCDADBDADDDAADABDCDADADABDCDADBDADDABD
    CDADABDCDADBDADDDABDCDADBDADABDCDADAABDCDADBDADEFABDCDADADABDCDADBDADDAABDC
    DADABDCDADBDADDABDCDADABGHABDCDADABDCDADBDADDAAABCABDCDADIJK $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L62 $p |- ( ( a | b ) | b ) = ( ( a | a ) | b ) $=
    ( tshef L37 L50 eqcom eqtr ) ABCBCBBACCAACBCABBDAACBCBBACCABEFG $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L63 $p |- ( ( ( a | b ) | c ) | a ) = ( ( ( b | b ) | c ) | a ) $=
    ( tshef L47 eqcom shefeq1 L61 L33 shefeq2 L38 L62 shefeq111 shefeq11 eq7tr
    L60 L54 ) ABDCDADABDCDABDCDDABDCDABDCDDDADABDCDABDCDDADBDABDCDABDCDDDADABDC
    DABDCDDDADABDCDABDCDDADBDABDCDABDCDDDADABDCDABDCDDDABDCDABDCDDADBDABDCDABDC
    DDDADAABDCDABDCDDDDDABDCDABDCDDADBDABDCDABDCDDDADABDCDADADBDABDCDABDCDDDADB
    BDABDCDABDCDDDADBBDCDADABDCDABDCDABDCDDABDCDABDCDDDAABDCDABDCDDABDCDABDCDDD
    ABDCDABDCDABDCDEFGABDCDABDCDDABDCDABDCDDDABDCDABDCDDADBDABDCDABDCDDDADABDCD
    ABDCDDDAABDCDABDCDDADBDABDCDABDCDDDADABDCDABDCDDDABDCDABDCDDABDCDABDCDDDABD
    CDABDCDDABHFGAABDCDABDCDDADBDABDCDABDCDDDADAABDCDABDCDDDDABDCDABDCDDADBDABD
    CDABDCDDDADABDCDABDCDDDABDCDABDCDDADBDABDCDABDCDDDADAABDCDABDCDDDDAABDCDABD
    CDDADBDABDCDABDCDDAIFJABDCDABDCDDADBDABDCDABDCDDDADABDCDABDCDDAKABDCDABDCDD
    ADABDCDADADBABDCDABDCDDAABDCDADADABDCDABDCDDADABDCDALFMABDCDADADBDBBDABDCDA
    BDCDDAABCPNBBDABDCDABDCDDDBBDCDABACQGO $.

  $( Lemma for deriving the Sheffer BA axioms from the Wolfram axiom.
     (Contributed by NM and RV, 1-Oct-2021.) $)
  L64 $p |- ( ( ( a | ( b | b ) ) | c ) | a ) = ( ( b | c ) | a ) $=
    ( tshef L63 L47 shefeq11 eqtr ) ABBDDCDADBBDBBDDCDADBCDADABBDCEBBDBBDDBCABB
    FGH $.



$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
           Third Sheffer axiom
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)

  $( Third Sheffer axiom for a Boolean algebra.  (Contributed by NM and RV,
     1-Oct-2021.) $)
  T3 $p |- ( ( ( a | a ) | b ) | ( ( c | c ) | b ) ) = ( ( b | ( a | c ) ) | ( b | ( a | c ) ) ) $=
    ( tshef L63 L36 shefeq111 L64 shefeq1 L50 shefeq2 L32 shefeq21 L42 shefeqeq
    eqcom L37 eq7tr ) AADBDCCDBDDCCDBDADBDCCDBDDBCCDDADBDCCDBDDCADBDCCDBDDCADBD
    BBCDDDCADBDCADBDBCDDBCDDDCADBDCADBDDBACDDBACDDDCCDBDADBDCCDBDDAADBDCCDBDDCC
    DBDABEPCCDBDBCCDDABCCDBDCCDBFGBCCDDADBDCADBDCCDBDBCAHICCDBDBBCDDCADBDCBJKBC
    ADBDBCDDBCDCADBDCADBDBCDDBCABLPMCADBDBCDNCADBDBACDDCADBDBACDDCABQCABQOR $.



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


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL1 $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) = a $=
    ( tshef ax-A eqcom shefeq1 shefeq1221 shefeq12 shefeq111 eq5tr ) AAABABBAAA
    BABBBAABABAAABABBBAAABABBBAABABAABABAAABABBBAABABBBBAAABABBBAABABAAABABBBAA
    ABABBBAABABAAABABBBBAAABABBBAABABAAABABBBAAABABBBABAAABABBBAAAABABBBABAAABA
    BBBAAAABABBAABABAAABABBBAAABABBBAABABAABABAAABABBBAABABBBBAAABABBAABABAAABA
    BBBAAABABBBAABABAABABAAABABBBAABABBBBAAABABBAAABABBAABABAAABABBCDEAABABAAAB
    ABBBAAABABAABABAABABAAABABBBAAABABBBAAABABBAAACFAABABAAABABBBAAABABAAABABBB
    AAABABBBAAABABBAAACGAABABAAABABBBAAAABABBAAAABABBAAACHAAAAABABBCI $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL2 $p |- ( ( a | a ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) = a $=
    ( tshef ax-A eqcom shefeq22 nksL1 shefeq2212 shefeqeq shefeq1 eq5tr ) AABAA
    ABABBABBAABAAABABBAAABABBABAAABABBBBBAABAAABABBAAABABBAAABABBAAABABBBBAAABA
    BBBBBAAABABBAAABABBBAAABABBAAABABBBBAAABABBAAABABBAAABABBAAABABBBBAAABABBBB
    BAAABABBAAABABBBAAAAABABBABAAABABBBAAABABBAABAAABABBABAAABABBBAAAAABABCDEAA
    AABABBAAABABBBAAABABBAAABABBAAABABBAABAAABABBAAABABBBAAFDGAABAAABABBAAABABB
    BAAABABBAAABABBBBAAABABBAAABABBAAABABBAAABABBBBAAABABBBBAAAABABBAAABABBBAAA
    ABABBAAABABBBAAABABBAAABABBBAAFDAAABABBAAABABBBAAFDHIAAABABBAAABABBBAAABABB
    AAABABBCAFJ $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL3 $p |- ( ( a | b ) | ( ( a | a ) | ( ( ( a | a ) | b ) | ( a | a ) ) ) ) = b $=
    ( tshef nksL2 eqcom shefeq11 ax-A eqtr ) ABCAACAACBCAACCCCAACAAACACCACCBCAA
    CAACBCAACCCCBAAACAAACACCACCBAACAACBCAACCCAACAAACACCACCAADEFBAACAAACACCACGH
    $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL4 $p |- ( ( ( a | ( ( a | b ) | a ) ) | d ) | ( b | ( ( b | d ) | b ) ) ) = d $=
    ( wvf tshef ax-A eqcom shefeq222 shefeq2211 shefeq21 nksL3 shefeq11 eq5tr )
    AABEAEECEBBCEBEEEAABEAEECEBBCEADEBEAABEAEEEEEEAABEAEECEBADEBEAABEAEEECEADEB
    EAABEAEEEEEEAABEAEECEADEBEAABEAEEEADEBEAABEAEEECEADEBEAABEAEEEEEEADEBEAABEA
    EEEADEBEADEBEEADEBEADEBEEAABEAEEEADEBEADEBEEEEECEADEBEAABEAEEEADEBEAABEAEEE
    CEADEBEAABEAEEEEEECBADEBEAABEAEEEBCEBAABEAEECEADEBEAABEAEEEBBADFGHBADEBEAAB
    EAEEECADEBEAABEAEEEBAABEAEECEADEBEAABEAEEEBBADFGIBADEBEAABEAEEEADEBEAABEAEE
    ECEADEBEAABEAEEEEAABEAEECEADEBEAABEAEEEBBADFGJAABEAEEADEBEAABEAEEEADEBEADEB
    EEADEBEADEBEEAABEAEEEADEBEADEBEEEEECADEBEAABEAEEEADEBEAABEAEEECEADEBEAABEAE
    EEEEADEBEAABEAEEEADEBEADEBEEADEBEADEBEEAABEAEEEADEBEADEBEEEEEAABEAEEADEBEAA
    BEAEEKGLCADEBEAABEAEEEADEBEADEBEEADEBEADEBEEAABEAEEEADEBEADEBEEEEFM $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL5 $p |- ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) = a $=
    ( tshef nksL4 eqcom shefeq22 shefeq1 shefeq1221 shefeq12 shefeq112 eq6tr
    ax-A ) AAABABBAAABABBABBAAABABBAAABABBAAABABBABAAABABBBBBAABABAABABAAABABBB
    AABABBBAAABABBBAABABAABABAAABABBBAABABBBBAAABABBAAABABBABAAABABBBBBAABABAAB
    ABAAABABBBAABABBBAAABABBBAABABAAABABBBBAAABABBAAABABBABAAABABBBBBAABABAABAB
    AAABABBBAABABBBAAABABBBABAAABABBAAABABBABAAABABBBBBAABABAABABAAABABBBAABABB
    BAABABAABABAAABABBBAABABBBAAABABBBAABABAABABAAABABBBAABABBBBBABAAABABBAAABA
    BBABAAABABBBBBAAAAABABBABAAABABBBAAABABBAAABABBAAABABBABAAABABBBAAAACDEAAAB
    ABBAABABAABABAAABABBBAABABBBAAABABBBAABABAABABAAABABBBAABABBBBAAABABBAAABAB
    BABAAABABBBBAABABAABABAAABABBBAABABBBAAABABBBAABABAABABAAABABBBAABABBBBAAAB
    ABBAAABABBAABABAABABAAABABBBAABABBKDFAABABAAABABBBAAABABAABABAABABAABABAAAB
    ABBBAABABBBAAABABBBAAABABBAAABABBABAAABABBBBAAAKGAABABAAABABBBAAABABAABABAA
    ABABBBAABABBBAAABABBBAAABABBAAABABBABAAABABBBBAAAKHAAABABBAABABAABABAAABABB
    BAABABBBAAABABBBAABABAABABAAABABBBAABABBBBAABABAABABAAABABBBAABABBBAAAABABB
    AAABABBABAAABABBBBAABABAABABAAABABBBAABABBBAAABABBBAABABAABABAAABABBBAABABB
    BBAAABABBAAABABBAABABAABABAAABABBBAABABBKDIAABABAABABAAABABBBAABABBBAAABABB
    ACJ $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  Note that penultimate step
     is same as 3 steps above it.  (Contributed by SW, 14-May-2002.) $)
  nksL6 $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) $=
    ( tshef nksL1 eqcom shefeq21 ax-A shefeq1 shefeq2211 shefeq221221 shefeq221
    nksL5 nksL4 eq9tr ) AAABABBAAAABABBBBAAABABBAAABABBAAABABBBAAABABBBBAAABABB
    AAABABBABBAAABABBBAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABBABBAAABABBA
    AABABBABBAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABBABBBBBAAABABBAAABABB
    AAABABBABBAAABABBAAABABBABBAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABBAB
    BBBBAAABABBAAAABABBAAABABBABBAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABB
    ABBBBBAAABABBAAAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABBABBBBBAAABABBA
    AAAABABBAAAABABBBBBAAABABBAAABABBABBBBBAAABABBAAAAABABBAAABABBAAABABBBAAABA
    BBBBBAAABABBAAABABBABBBBBAAABABBAAAABABBAAABABBAAABABBABBBBBAAABABBAAAABABB
    ABAAABABBBAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABBABBBBBAAAABABBAAABA
    BBBAAABABBAAABABBAAABABBAAABABBBAACDEAAABABBAAABABBABBAAABABBBAAABABBAAABAB
    BAAABABBBAAABABBBBBAAABABBAAABABBABBAAABABBAAABABBABBAAABABBAAABABBAAABABBB
    AAABABBBBBAAABABBAAABABBABBBBBAAABABBAAABABBAAABABBBAAABABBBBAAABABBAAABABB
    AAABABBBAAABABBBBAAABABBAAABABBABBAAABABBFDAAABABBAAABABBABBAAABABBBAAABABB
    AAABABBAAABABBBAAABABBBBBAAABABBAAABABBAAABABBABBAAABABBAAABABBABBAAABABBAA
    ABABBAAABABBBAAABABBBBBAAABABBAAABABBABBBBAAABABBAAABABBAAABABBABFGAAABABBA
    AABABBABBAAAABABBAAABABBABBAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABBAB
    BBAAABABBAKEAAABABBAAABABBABBAAAABABBAAABABBAAABABBBAAABABBBBAAABABBAAABABB
    ABBAAAABABBAKHAAABABBAAABABBBAAAABABBAAABABBAAAABABBAAABABBABBAAAABABBACIAA
    ABABBAAAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABBABBBBBAAABABBAAAAABABB
    AAAABABBBBBAAABABBAAABABBABBBBBAAABABBAAABABBBAAAABABBAAABABBAAAABABBAAABAB
    BABBAAAABABBACIDAAAABABBABAAABABBBAAABABBAAABABBAAABABBBAAABABBBBAAABABBAAA
    BABBABBAAAABABBAAABABBABAAABABBBAAAALDHAAABABBABAAABABBBAAABABBAAABABBAAABA
    BBBAAABABBBBBAAABABBAAABABBAAABABBABBAAAABABBAAABABBAAABABBAFJM $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL7 $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) $=
    ( tshef nksL6 nksL5 shefeq222 ax-A eqcom shefeq221 shefeq2211 nksL3 shefeq1
    eq6tr ) AAABABBAAAABABBBBAAABABBAAAABABBAAABABBAAABABBABBBBBAAABABBAAAABABB
    ABBBAAABABBAAABABAAABABBBAABAABAAABABBBAABBBBABBBAAABABBAAAABAABAAABABBBAAB
    BBBABBBAAAABABBBAABAABAAABABBBAABBBBAAAABAABAAABABBBAABBBBABBBAABAABAAABABB
    BAABBBACAAABABBAAABABBABBAAAABABBAAAABABBADEAAABABBAABABAAABABBBAABAABAAABA
    BBBAABBBBAAAAABABBAABABAAABABBBAABAABAAABABBBAABBBBAAABABBAAABABBAABAFGHAAB
    ABAAABABBBAAABAABAAABABBBAABBBAAAAABABBAAAFIAAABABBAAAABABBBAABAABAAABABBBA
    ABBBBAAAABAABAAABABBBAABBBBABBAAAABABBBAABAABAAABABBBAABBBBAAABABBAAAABABBJ
    GKAABAABAAABABBBAABBBAAAABABBFL $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL8 $p |- ( ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) = ( a | ( ( a | a ) | a ) ) $=
    ( tshef nksL7 eqcom shefeqeq nksL1 shefeq21 eq3tr ) AABAABAAABABBBAABBBAABA
    ABAAABABBBAABBBBAAABABBAAAABABBBBAAABABBAAAABABBBBBAAABABBAAABABBAAABABBBAA
    ABABBBBAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAABAABAAABABBBAABBBAAABABBAAA
    ABABBBBAABAABAAABABBBAABBBAAABABBAAAABABBBBAAABABBAAAABABBBBAABAABAAABABBBA
    ABBBACDAAABABBAAAABABBBBAABAABAAABABBBAABBBACDEAAABABBAAAABABBBBAAABABBAAAB
    ABBAAABABBBAAABABBBBAAABABBAAAABABBBBAAABABBAAABABBAAABABBBAAABABBBBAAAABAB
    BAAABABBBAAABABBAAABABBAAABABBAAABABBBAAFDGAAAABABBAAABABBBAAABABBAAABABBAA
    ABABBAAABABBBAAFDGEAAABABBFH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL9 $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = ( ( a | ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
    ( tshef nksL1 eqcom shefeq21 nksL8 shefeq1 shefeqeq eq3tr ) AAABABBAAAABABB
    BBAAABABBAAABABBAAABABBBAAABABBBBAAABABBAAABABBBAAABABBAAABABBBAAABABBAAABA
    BBAAABABBBAAABABBBBBAAABABBAAABABBBBBAAABABBAAABABBBAAABABBAAABABBBAAABABBA
    AABABBAAABABBBAAABABBBBBAAABABBAAABABBBBBBAAAABABBAAABABBBAAABABBAAABABBAAA
    BABBBAAABABBBBBAAABABBAAABABBBBBAAAABABBAAABABBBAAABABBAAABABBAAABABBBAAABA
    BBBBBAAABABBAAABABBBBBBAAAABABBAAABABBBAAABABBAAABABBAAABABBAAABABBBAACDEAA
    ABABBAAABABBBAAABABBAAABABBBAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABBB
    BBAAABABBAAABABBBAAABABBAAABABBBAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAAAB
    ABBBBBBAAABABBAAABABBAAABABBBAAABABBBBAAABABBFDAAABABBAAABABBBAAABABBAAABAB
    BBAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABBBBBAAAABABBAAABABBBAAABABBA
    AABABBAAABABBBAAABABBBBBAAABABBAAABABBBBBAAABABBAAABABBBAAABABBAAABABBBAAAB
    ABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABBBBBAAAABABBAAABABBBAAABABBAAABABB
    AAABABBBAAABABBBBBAAABABBAAABABBBBBAAABABBAAABABBBAAAABABBAAABABBBAAABABBAA
    ABABBAAABABBBAAABABBBBBAAABABBAAABABBBBACGAAABABBAAABABBBAAAABABBAAABABBBAA
    ABABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABBBBACGHI $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL10 $p |- ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) = ( ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | ( ( a | ( ( a | a ) | a ) ) | ( ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
    ( tshef nksL7 eqcom nksL9 nksL1 shefeq211 shefeqeq eq3tr ) AABAABAAABABBBAA
    BBBAAABABBAAAABABBBBAAAABABBAAABABBBAAABABBAAABABBAAABABBBAAABABBBBBAAABABB
    AAABABBBBBAAAABABBAAABABBBAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABBBBB
    BAAAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABBBBBAAAAABABBAAABABBAAABABB
    BAAABABBBBBAAABABBAAABABBBBBBAAABABBAAAABABBBBAABAABAAABABBBAABBBACDAEAAAAB
    ABBAAABABBBAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABBBBBAAAAABABBAAABAB
    BAAABABBBAAABABBBBBAAABABBAAABABBBBBAAAABABBAAABABBBAAABABBAAABABBAAABABBBA
    AABABBBBBAAABABBAAABABBBBBAAAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABBB
    BBAAABABBAAABABBBAAAABABBAAABABBAAABABBBAAABABBBBAAABABBAAABABBBAAFGAAABABB
    AAABABBBAAAABABBAAABABBAAABABBBAAABABBBBAAABABBAAABABBBAAFGHI $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL11 $p |- ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) = ( ( a | ( ( a | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) | ( a | ( ( a | ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
    ( tshef nksL10 nksL1 shefeq21221 shefeqeq nksL7 shefeq212 eq3tr ) AABAABAAA
    BABBBAABBBAAAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABBBBBAAAAABABBAAABA
    BBAAABABBBAAABABBBBBAAABABBAAABABBBBBBAAAAABABBAAAABABBBBBAAABABBAAABABBBBB
    AAAAABABBAAAABABBBBBAAABABBAAABABBBBBBAAAABAABAAABABBBAABBBBAAABABBAAABABBB
    BBAAAABAABAAABABBBAABBBBAAABABBAAABABBBBBBACAAAAABABBAAABABBAAABABBBAAABABB
    BBBAAABABBAAABABBBBBAAAAABABBAAAABABBBBBAAABABBAAABABBBBBAAAAABABBAAABABBAA
    ABABBBAAABABBBBBAAABABBAAABABBBBBAAAAABABBAAAABABBBBBAAABABBAAABABBBBBAAABA
    BBAAABABBBAAAABABBAAABABBAAAABABBAAABABBBAADEAAABABBAAABABBBAAAABABBAAABABB
    AAAABABBAAABABBBAADEFAAAAABABBAAAABABBBBBAAABABBAAABABBBBBAAAABAABAAABABBBA
    ABBBBAAABABBAAABABBBBBAAAAABABBAAAABABBBBBAAABABBAAABABBBBBAAAABAABAAABABBB
    AABBBBAAABABBAAABABBBBBAAABABBAAAABABBBBAABAABAAABABBBAABBBAAAABABBAAABABBB
    AAGHAAABABBAAAABABBBBAABAABAAABABBBAABBBAAAABABBAAABABBBAAGHFI $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL12 $p |- ( ( a | a ) | ( ( ( a | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | a ) ) ) = ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) $=
    ( tshef nksL11 ax-A eqcom shefeq211 shefeqeq shefeq21 nksL1 shefeq22 eq4tr
    ) AABAABAAABABBBAABBBAAAABAABAAABABBBAABBBBAAABABBAAABABBBBBAAAABAABAAABABB
    BAABBBBAAABABBAAABABBBBBBAAABABAAABABBBAABAABAAABABBBAABBBBAAABABBAAABABBBB
    BAAABABAAABABBBAABAABAAABABBBAABBBBAAABABBAAABABBBBBBAAAABABBAAABABBAAABABB
    BBBAAAABABBAAABABBAAABABBBBBBAAAABABBABBAAAABABBABBBACAAAABAABAAABABBBAABBB
    BAAABABBAAABABBBBBAAABABAAABABBBAABAABAAABABBBAABBBBAAABABBAAABABBBBBAAAABA
    ABAAABABBBAABBBBAAABABBAAABABBBBBAAABABAAABABBBAABAABAAABABBBAABBBBAAABABBA
    AABABBBBBAAABABAAABABBBAABAABAAABABBBAABBBAAABABBAAABABBBAAABABAAABABBBAAAA
    DEFAAABABAAABABBBAABAABAAABABBBAABBBAAABABBAAABABBBAAABABAAABABBBAAAADEFGAA
    ABABAAABABBBAABAABAAABABBBAABBBBAAABABBAAABABBBBBAAAABABBAAABABBAAABABBBBBA
    AABABAAABABBBAABAABAAABABBBAABBBBAAABABBAAABABBBBBAAAABABBAAABABBAAABABBBBB
    AABABAAABABBBAABAABAAABABBBAABBBBAAABABBAAABABBAAABABBBAAAABABBAABADHAABABA
    AABABBBAABAABAAABABBBAABBBBAAABABBAAABABBAAABABBBAAAABABBAABADHGAAAABABBAAA
    BABBAAABABBBBBAAAABABBABBAAAABABBAAABABBAAABABBBBBAAAABABBABBAAABABBAAABABB
    BAAAABABBAAIJAAABABBAAABABBBAAAABABBAAIJGK $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL13 $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) $=
    ( tshef nksL7 nksL12 eqtr ) AAABABBAAAABABBBBAABAABAAABABBBAABBBAAAABABBABB
    AAAABABBABBBACADE $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL14 $p |- ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | a ) | a ) ) | ( ( ( ( a | a ) | a ) | ( a | ( ( a | a ) | a ) ) ) | ( a | ( ( a | a ) | a ) ) ) ) ) ) $=
    ( tshef nksL13 eqcom nksL1 shefeq21 ax-A shefeq1112 nksL4 shefeq1 shefeq221
    shefeq21121 shefeq211 shefeq222121 eq9tr ) AAAABABBABBAAAABABBABBBAAABABBAA
    AABABBBBAAABABBAAABABBAAABABBBAAABABBBBAABABAABABAAABABBBAABABBBAAABABBBAAA
    BABBBAAABABBAAABABBAAABABBBAAABABBBBBAABABAABABAAABABBBAABABBBAAABABBBAABAB
    AABABAAABABBBAABABBBAAABABBBAAABABBAAABABBAAABABBBAAABABBBBBAABABAABABAAABA
    BBBAABABBBAAABABBBBBBAABABAABABAAABABBBAABABBBAABABAABABAAABABBBAABABBBAAAB
    ABBBAABABAABABAAABABBBAABABBBBBAAABABBBAAABABBAAABABBAAABABBBAAABABBBBBAABA
    BAABABAAABABBBAABABBBAAABABBBAABABAABABAAABABBBAABABBBAAABABBBAAABABBAAABAB
    BAAABABBBAAABABBBBBAABABAABABAAABABBBAABABBBAAABABBBBBBAAABABBAABABAABABAAA
    BABBBAABABBBAAABABBBAABABAABABAAABABBBAABABBBAAABABBBAAABABBAAABABBAAABABBB
    AAABABBBBBAABABAABABAAABABBBAABABBBAAABABBBBBBAAABABBAABABAABABAAABABBBAABA
    BBBAAABABBBAAABABBAABABAABABAAABABBBAABABBBAAABABBBBBBAAABABBAABABAAABABBBA
    AABABBBAAABABBAABABAABABAAABABBBAABABBBAAABABBBBBBAAABABBAAAABABBBAAABABBAA
    BABAAABABBBAAABABBBBBBAAABABBAAAABABBBAAABABBAABABAABABAAABABBBAABABBBAAABA
    BBBBBBAAABABBAAAABABBBBAAAABABBABBAAAABABBABBBACDAAAABABBAAABABBBAAABABBAAA
    BABBAAABABBAAABABBBAAEDFAABABAABABAAABABBBAABABBBAAABABBBAAABABBBAAABABBAAA
    BABBAAABABBBAAABABBBBBAABABAABABAAABABBBAABABBBAAABABBBAABABAABABAAABABBBAA
    BABBBAAABABBBAAABABBAAABABBAAABABBBAAABABBBBBAABABAABABAAABABBBAABABBBAAABA
    BBBBBBAAABABBAAABABBAAABABBBAAABABBBBAAABABBAAABABBAAABABBBAAABABBBBAABABAA
    BABAAABABBBAABABBBAAABABBBAAABABBGDAAABABBAABABAABABAAABABBBAABABBBAAABABBB
    AABABAABABAAABABBBAABABBBBAABABAABABAAABABBBAABABBBAAABABBAAABABBAAABABBAAA
    BABBBAAABABBBBAABABAABABAAABABBBAABABBBAAABABBBAABABAABABAAABABBBAABABBBAAA
    BABBBAAABABBAAABABBAAABABBBAAABABBBBBAABABAABABAAABABBBAABABBBAAABABBBBBAAB
    ABAABABAAABABBBAABABBBAAABABBBAABABAABABAAABABBBAABABBBBAAABABBAAABABBAABAB
    AABABAAABABBBAABABBGDHAABABAABABAAABABBBAABABBBAABABAABABAAABABBBAABABBBAAA
    BABBBAABABAABABAAABABBBAABABBBBBAAABABBBAAABABBAAABABBAAABABBBAAABABBBBBAAA
    BABBAABABAABABAAABABBBAABABBBAAABABBBAABABAABABAAABABBBAABABBBAAABABBBAAABA
    BBAAABABBAAABABBBAAABABBBBBAABABAABABAAABABBBAABABBBAAABABBBBBAABABAABABAAA
    BABBBAABABBBAAABABBAAABABBIJAABABAABABAAABABBBAABABBBAAABABBBAAABABBAAABABB
    AAABABBBAAABABBBBBAAABABBAABABAABABAAABABBBAABABBBAAABABBBAABABAABABAAABABB
    BAABABBBAAABABBBAAABABBAABABAAABABBAAABABBIKAABABAAABABBBAAABABAABABAAABABB
    AAABABBAABABAABABAAABABBBAABABBBAAABABBBBAAABABBAAAGLAABABAAABABBBAAAABABBA
    AABABBAABABAABABAAABABBBAABABBBAAABABBBBAAABABBAAAGMAABABAAABABBBAAABABAABA
    BAAABABBAAABABBAAAABABBBAAABABBAAAGNO $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL15 $p |- ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( ( a | ( a | ( ( a | a ) | a ) ) ) | ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) ) ) $=
    ( tshef nksL14 ax-A shefeq2221 nksL13 shefeq22 eq3tr ) AAAABABBABBAAAABABBA
    BBBAAABABBAAAABABBBAAABABBAABABAAABABBBAAABABBBBBBAAABABBAAAABABBBAAABABBAA
    AABABBBBBBAAABABBAAAABABBBAAAABABBABBAAAABABBABBBBBACAABABAAABABBBAAAABABBA
    AABABBAAAABABBBAAABABBAAADEAAABABBAAAABABBBBAAAABABBABBAAAABABBABBBAAAABABB
    BAAABABBAFGH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL16 $p |- ( ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | ( a | ( ( a | a ) | a ) ) ) $=
    ( tshef nksL15 nksL12 eqcom shefeq22 nksL3 shefeq2 eq3tr ) AAAABABBABBAAAAB
    ABBABBBAAABABBAAAABABBBAAAABABBABBAAAABABBABBBBBAAABABBAAAABABBBAABAABAAABA
    BBBAABBBBBAAABABBAAABABBBACAAAABABBABBAAAABABBABBBAABAABAAABABBBAABBBAAAABA
    BBBAAABABBAABAABAAABABBBAABBBAAAABABBABBAAAABABBABBBADEFAAAABABBBAABAABAAAB
    ABBBAABBBBAAABABBAAABABBAAAABABBGHI $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL17 $p |- ( ( a | ( ( a | a ) | a ) ) | ( a | ( a | ( ( a | a ) | a ) ) ) ) = a $=
    ( tshef nksL13 nksL16 nksL1 eq3tr ) AAABABBAAAABABBBBAAAABABBABBAAAABABBABB
    BAAABABBAAABABBBAACADAEF $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL18 $p |- ( a | ( ( a | a ) | a ) ) = ( a | a ) $=
    ( tshef nksL1 eqcom nksL16 shefeq2121 shefeqeq nksL17 shefeq21 eq5tr ) AAAB
    ABBAAABABBAAABABBAAABABBBAAABABBBBAAABABBAAABABBAAABABBBAAABABBBBBAAABABBAA
    ABABBAAABABBAAABABBBAAABABBBBAAABABBBBAAABABBAAABABBAAABABBAAABABBBAAABABBB
    BAAABABBBBBAAABABBAAABABBAAAABABBBBAAABABBBBAAABABBAAABABBAAAABABBBBAAABABB
    BBBAAABABBAAAABABBBBAAABABBAAAABABBBBBAABAAABABBAAABABBAAABABBBAAABABBBBAAA
    BABBAAABABBAAABABBBAAABABBBBBAAABABBAAABABBCDAAABABBAAABABBAAABABBAAABABBBA
    AABABBBBAAABABBBBAAABABBAAABABBAAABABBAAABABBBAAABABBBBAAABABBBBBAAABABBAAA
    BABBAAABABBBAAABABBBBAAABABBAAABABBAAABABBBAAABABBBBBAAABABBEDAAABABBAAABAB
    BAAABABBAAABABBBAAABABBBBAAABABBBBAAABABBAAABABBAAAABABBBBAAABABBBBAAABABBA
    AABABBAAABABBAAABABBBAAABABBBBAAABABBBBAAABABBAAABABBAAAABABBBBAAABABBBBAAA
    BABBAAABABBBAAAABABBAAABABBAAABABBAAABABBACFAAABABBAAABABBBAAAABABBAAABABBA
    AABABBAAABABBACFGAAABABBAAABABBAAAABABBBBAAABABBBBAAABABBAAAABABBBBAAABABBA
    AABABBAAAABABBBBAAABABBBBAAABABBAAAABABBBBAAABABBAAAABABBBBAAAABABBAAABABBA
    HIAAABABBAAAABABBBBAAAABABBAAABABBAHIGAAABABBAAAABABBBBAAAABABBAAAABABBBBAA
    HAHGJ $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL19 $p |- ( ( a | a ) | ( a | ( a | a ) ) ) = a $=
    ( tshef nksL18 eqcom shefeq22 shefeq1 nksL17 eq3tr ) AABAAABBBAABAAAABABBBB
    AAABABBAAAABABBBBAAABAAABABBAAABAAABABBAABACDEAABAAABABBAAAABABBBAAABABBAAB
    ACDFAGH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL20 $p |- ( a | ( a | ( ( a | ( ( a | a ) | a ) ) | a ) ) ) = ( ( a | ( ( a | a ) | a ) ) | a ) $=
    ( tshef nksL18 eqcom shefeq22121 nksL2 shefeq1 ax-A eq3tr ) AAAAABABBABBBAA
    AAAABABBABBABBBAABAAABABBABBAAAAABABBABBABBBAAABABBABAABAAABABBAAAAAAAABABB
    AABACDEAAABAAABABBABBAAAAABABBABBABBAABAAABABBABBAAFDGAAABABBABAAHI $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL21 $p |- ( a | ( a | a ) ) = ( ( a | ( ( a | a ) | a ) ) | a ) $=
    ( tshef nksL18 eqcom shefeq2 shefeq221 nksL20 eq3tr ) AAABBAAAABABBBAAAAABA
    BBABBBAAABABBABAABAAABABBAAAABABBAABACDEAABAAABABBAAAAAABABBAABACDFAGH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL22 $p |- ( ( a | a ) | ( a | a ) ) = a $=
    ( tshef nksL18 eqcom shefeqeq nksL1 eqtr ) AABAABBAAABABBAAABABBBAAABAAABAB
    BAABAAABABBAAABABBAABACDAAABABBAABACDEAFG $.


$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
           First Sheffer axiom
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)

  $( Proof of Sheffer's first axiom for Boolaen Algebra.  (Contributed by SW,
     14-May-2002.) $)
  nksT1 $p |- ( ( a | a ) | ( a | a ) ) = a $=
    ( nksL22 ) AB $.


$(
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
         Lemmas nksL23 through nksL56 towards proving second Sheffer axiom
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
$)


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL23 $p |- ( ( a | a ) | a ) = ( a | ( a | a ) ) $=
    ( tshef nksL18 eqcom shefeq1 nksL21 eqtr ) AABABAAABABBABAAABBAABAAABABBAAA
    ABABBAABACDEAAABBAAABABBABAFDG $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL24 $p |- ( ( ( a | b ) | a ) | ( a | a ) ) = a $=
    ( tshef nksL18 eqcom shefeq2 ax-A eqtr ) ABCACAACCABCACAAACACCCAAACAAACACCA
    BCACAAACACCAACADEFAABGH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL25 $p |- ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( ( ( a | b ) | ( a | b ) ) | ( a | b ) ) ) ) $=
    ( tshef ax-A eqcom shefeq1 nksL19 shefeq2211 shefeq221121 shefeq21 shefeqeq
    nksL24 shefeq22111 shefeq22112 shefeq221 eq9tr ) AAABCABCCCACCABCABCABCCCAA
    ABCABCCCACCCABCABCAAABCABCCCACCCABCCCCABCABCCABCABCAAABCABCCCACCCABCCCCABCA
    BCCABCABCABCCABCABCABCCCCAAABCABCCCACCCABCCCCABCABCCABCABCABCCABCABCCAAABCC
    ACCCABCABCCCCAAABCABCCCACCCABCCCCABCABCCABCABCABCCABCABCCAAABCCACCCABCABCCC
    CAAABCCACCCABCABCCABCABCCAAABCCACCCABCABCCCCCABCABCCABCABCCAAABCCACCCABCABC
    CCCABCABCCABCABCCAAABCCACCCABCABCCCCCCAAABCABCCCACCCABCCCCABCABCCABCAAABCCA
    CCABCABCCABCABCCAAABCCACCCABCABCCCCABCABCCABCABCCAAABCCACCCABCABCCCCCCAAABC
    ABCCCACCCABCCCCABCABCCABCAAABCCACCABCABCCABCABCABCCCCABCABCCABCABCABCCCCCCA
    AABCABCCCACCCABCCCCABCABCCABCABCABCCABCCCCABCABCCABCAAABCCACCABCABCCCAAABCA
    BCCCACCCABCCCCABCABCABCCCAAABCABCCCACCCABCABCAAABCABCCCACCCABCCCCAAABCABCCC
    ACCAAABCABCCCACCABCABCABCCDEABCABCABCCCAAABCABCCCACCCABCABCCABCABCAAABCABCC
    CACCCABCCCABCABCCABDFABCABCABCCABCABCABCCCCAAABCABCCCACCABCABCABCABCCABCABC
    CABCABCABCCCCABCABCGEHABCABCABCCAAABCCACCCABCABCCABCABCCAAABCABCCCACCABCABC
    ABCABCCABCABCCAAABCCACCCABCABCABDEIABCABCCABCABCCAAABCCACCCABCABCCCCABCABCC
    ABCABCCAAABCCACCCABCABCCCCAAABCCACCCABCABCCABCABCCAAABCCACCCABCABCCCCCABCAB
    CCABCABCCAAABCCACCCABCABCCCCABCABCCABCABCCAAABCCACCCABCABCCCCCCAAABCABCCCAC
    CABCABCABCABCCABCABCCABCABCCAAABCCACCCABCABCCCCAAABCCACCCABCABCCABCABCCAAAB
    CCACCCABCABCCCCCABCABCCABCABCCAAABCCACCCABCABCCCCABCABCCABCABCCAAABCCACCCAB
    CABCCCCCCABCABCCABCABCCAAABCCACCCABCABCCCCABCABCCABCABCCAAABCCACCCABCABCCCC
    AAABCCACCLEHABCABCCABCABCCAAABCCACCCABCABCCCCAAABCCACCCABCABCCABCABCCAAABCC
    ACCCABCABCCCCCAAABCCACCABCABCCABCABCCAAABCCACCCABCABCCCCABCABCCABCABCCAAABC
    CACCCABCABCCCCCAAABCABCCCACCABCABCABCABCCAAABCCACCABCABCCABCABCCAAABCCACCCA
    BCABCCCDMABCABCCABCABCCAAABCCACCCABCABCCCCABCABCCABCABCCAAABCCACCCABCABCCCC
    CABCABCCABCABCABCCCCABCABCCABCABCABCCCCCAAABCCACCAAABCABCCCACCABCABCABCABCC
    ABCABCCABCABCCAAABCCACCCABCABCCCCABCABCCABCABCABCCCCABCABCCABCABCCAAABCCACC
    CABCABCCCCABCABCCABCABCABCCCCABCABCCAAABCCACCCABCABCABCCABCABCCABCABDJABCAB
    CCAAABCCACCCABCABCABCCABCABCCABCABDJKNABCABCCABCABCABCCCCABCABCCABCABCABCCC
    CCABCABCCAAABCCACCAAABCABCCCACCABCABCABCABCCABCABCCABCABCABCCCCABCABCABCCAB
    CABCABCCCCABCABCGABCGKNAAABCCACCABCABCCCAAABCABCCCACCCABCABCCABCABCABCABCCA
    BCABCCAAABCCACDOP $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL26 $p |- ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) = ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( a | b ) ) ) $=
    ( tshef nksL25 eqcom shefeq2 shefeq21 nksL12 shefeq22 nksL16 nksL1 eq6tr
    ax-A ) AAABCABCCCACCABCABCCABCABCABCCABCCCCABCABCCABCABCCABCCABCABCABCCABCC
    CCABCABCCABCABCCABCABCABCCABCCCCABCABCCCCCCABCABCCABCABCABCCABCABCCABCABCAB
    CCABCCCCABCABCCCCCCABCABCCABCABCABCABCABCCABCCCABCCCABCABCABCABCCABCCCABCCC
    CCCABCABCCABCABCABCABCCABCCCABCABCABCCABCCCCCCABCABCCABCABCCCABDABCABCABCCA
    BCCCABCABCCABCCABCABCABCCABCCCCABCABCCABCABCCABCABCABCCABCCCCABCABCCCCCABCA
    BCCABCABCCABCCABCABCABCCABCCCCABCABCCABCABCCABCABCABCCABCCCCABCABCCCCCABCAB
    CABCCABCCCABCABCABCCABCCCABCABCCABCMEFABCABCCABCCABCABCABCCABCCCCABCABCABCC
    ABCABCCABCABCABCCABCCCCABCABCCCCABCABCCABCABCABCMGABCABCCABCABCCABCABCABCCA
    BCCCCABCABCCCCABCABCABCABCCABCCCABCCCABCABCABCABCCABCCCABCCCCABCABCABCCABCH
    IABCABCABCABCCABCCCABCCCABCABCABCABCCABCCCABCCCCABCABCABCCABCCCABCABCABCCAB
    CCCCABCABCABCCABCJIABCABCABCCABCCCABCABCABCCABCCCCABCABCABCABCCABCKIL $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL27 $p |- ( a | ( ( a | ( ( a | b ) | ( a | b ) ) ) | a ) ) = ( a | b ) $=
    ( tshef nksL26 nksL22 eqtr ) AAABCABCCCACCABCABCCABCABCCCABCABDABCEF $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL28 $p |- a = ( ( ( a | b ) | a ) | ( ( ( ( a | b ) | a ) | ( a | a ) ) | ( ( a | b ) | a ) ) ) $=
    ( tshef nksL24 eqcom nksL27 shefeqeq shefeq212 eq3tr ) AABCACAACCABCACABCAC
    ABCACAACCABCACAACCCCABCACCCABCACABCACAACCABCACCCABCACAACCAABDEABCACABCACABC
    ACAACCABCACAACCCCABCACCCABCACAACCABCACAACFEABCACAACCABCACAACCCAACABCACABCAC
    ABCACABCACAACCAABCACAACCAABDABDGHI $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL29 $p |- ( ( ( a | b ) | a ) | ( a | ( ( a | b ) | a ) ) ) = a $=
    ( tshef nksL24 eqcom shefeq21 nksL28 eqtr ) ABCACAABCACCCABCACABCACAACCABCA
    CCCAAABCACAACCABCACABCACABCACAACCAABDEFAABCACABCACAACCABCACCCABGEH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL30 $p |- ( ( a | b ) | ( a | a ) ) = a $=
    ( tshef nksL27 eqcom shefeq1 nksL29 shefeqeq shefeq2 shefeq21 nksL24 eq7tr
    ax-A ) ABCAACCAAABCABCCCACCAACCAAABCABCCCACCAABCABCCCACAAABCABCCCACCCAABCAB
    CCCACAAABCABCCCACCCCCAAABCABCCCACCAABCABCCCACAABCABCCCACAAABCABCCCACCCAABCA
    BCCCACCCAABCABCCCACAABCABCCCACAAABCABCCCACCCAABCABCCCACCCCCAABCABCCCACAABCA
    BCCCACAAABCABCCCACCCAABCABCCCACCCAAABCABCCCACCCAABCABCCCACAABCABCCCACAAABCA
    BCCCACCCAABCABCCCACCCCAABCABCCCACAABCABCCCACAAABCABCCCACCCAABCABCCCACCCAABC
    ABCCCACAABCABCCCACAAABCABCCCACCCAABCABCCCACCCCCAABCABCCCACAABCABCCCACAAABCA
    BCCCACCCAABCABCCCACCCAABCABCCCACAAABCABCCCACCCAABCAAABCABCCCACCAACAAABCABCC
    CACCABCABDEFAACAABCABCCCACAAABCABCCCACCCAABCABCCCACAAABCABCCCACCCCAAABCABCC
    CACCAAABCABCCCACAAABCABCCCACCCAAABCABCCCACAAABCABCCCACCCAABCABCCCACAAABCABC
    CCACCCAAABCABCCGEAABCABCCCACAAABCABCCCACCCAAABCABCCGEHIAABCABCCCACAAABCABCC
    CACCCAABCABCCCACAAABCABCCCACCCCAABCABCCCACAABCABCCCACAAABCABCCCACCCAABCABCC
    CACCCAABCABCCCACAABCABCCCACAAABCABCCCACCCAABCABCCCACCCCAAABCABCCCACCAABCABC
    CCACAAABCABCCCACCCAABCABCCCACAABCABCCCACAAABCABCCCACCCAABCABCCCACCCAABCABCC
    CACAAABCABCCCACCCAABCABCCCACAABCABCCCACAAABCABCCCACCCAABCABCCCACCCAAABCABCC
    CACAAABCABCCCACCCAABCABCCCACAABCABCCCACAABCABCCCACAAABCABCCCACCCAAABCABCCGE
    JAAABCABCCCACAAABCABCCCACCCAABCABCCCACAABCABCCCACAABCABCCCACAAABCABCCCACCCA
    AABCABCCGEJHIAAABCABCCCACCAABCABCCCACAABCABCCCACAAABCABCCCACCCAABCABCCCACCC
    AAABCABCCCACCCAABCABCCCACAABCABCCCACAAABCABCCCACCCAABCABCCCACCCCAABCABCCCAC
    AABCABCCCACAAABCABCCCACCCAABCABCCCACCCAABCABCCCACAABCABCCCACAAABCABCCCACCCA
    ABCABCCCACCCCAABCABCCCACAABCABCCCACAAABCABCCCACCCAABCABCCCACCCAAABCABCCCACC
    CAABCABCCCACAABCABCCCACAAABCABCCCACCCAABCABCCCACCCCAAABCABCCCACCAAABCABCCCA
    CCAABCABCCCACAABCABCCCACAAABCABCCCACCCAABCABCCCACCMEFAABCABCCCACAABCABCCCAC
    AAABCABCCCACCCAABCABCCCACCCAAABCABCCCACCKAABCABCCCACAAABCABCCCACCCAAABCABCC
    CACAABCABCCCACAABCABCCGJAABCABCCGL $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL31 $p |- ( b | ( ( a | b ) | ( a | b ) ) ) = ( a | b ) $=
    ( tshef nksL3 eqcom shefeq1 nksL30 eqtr ) BABCABCCCABCAACAACBCAACCCCABCABCC
    CABCBABCAACAACBCAACCCCABCABCCABCAACAACBCAACCCCBABDEFABCAACAACBCAACCCGH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL32 $p |- ( a | ( ( a | b ) | ( a | b ) ) ) = ( a | b ) $=
    ( tshef nksL30 eqcom shefeq1 eqtr ) AABCABCCCABCAACCABCABCCCABCAABCAACCABCA
    BCCABCAACCAABDEFABCAACDG $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL33 $p |- ( a | ( ( a | b ) | a ) ) = ( a | b ) $=
    ( tshef nksL32 eqcom shefeq21 nksL27 eqtr ) AABCACCAAABCABCCCACCABCABCAABCA
    BCCCAAAABCABCCCABCABDEFABGH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL34 $p |- ( ( ( a | b ) | c ) | ( b | c ) ) = c $=
    ( tshef nksL33 eqcom shefeq2 shefeq11 nksL4 eq3tr ) ABDCDBCDDABDCDBBCDBDDDA
    ABDADDCDBBCDBDDDCBCDBBCDBDDABDCDBBCDBDDBCDBCEFGABDAABDADDCBBCDBDDAABDADDABD
    ABEFHABCIJ $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL35 $p |- ( b | a ) = ( a | ( ( b | a ) | a ) ) $=
    ( tshef nksL31 eqcom nksL33 shefeq21 eq3tr ) BACABACBACCCAABACBACCCACCABACA
    CCABACBACCCBACBADEAABACBACCCACCABACBACCCABACBACCFEABACBACCCBACAABADGH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL36 $p |- ( b | ( b | ( a | b ) ) ) = ( a | b ) $=
    ( tshef nksL33 eqcom shefeq22 shefeq2 ax-A shefeq1 shefeq11 nksL4 eq6tr ) B
    BABCCCBBAABCACCCCBBBAABCACCCBCCCAABCACCBCAABCACCCBBAABCACCCBCCCAABCACCAABCA
    CCBCAABCACCCCAABCACCCBBAABCACCCBCCCAABCACCABCABCAABCACCBBAABCACCABCABDEFBAA
    BCACCCBBAABCACCCBCCBBBAABCACCCBCCBAABCACCCBAABCACCDEGBAABCACCBCAABCACCCBBAA
    BCACCCBCCAABCACCBCAABCACCCBBAABCACHEIAABCACCBCAABCACCAABCACCBCAABCACCCCAABC
    ACCBBAABCACCCBCCAABCACCAABCACCBCAABCACCCCAABCACCBCAABCACCBDEJAABCACCBAABCAC
    CKABDL $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL37 $p |- ( ( a | b ) | a ) = ( a | ( a | b ) ) $=
    ( tshef nksL36 eqcom nksL33 shefeq2 eqtr ) ABCACAAABCACCCAABCCAAABCACCCABCA
    CABCADEAABCACCABCAABFGH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL38 $p |- ( ( b | a ) | a ) = ( a | ( b | a ) ) $=
    ( tshef nksL36 eqcom nksL35 shefeq2 eqtr ) BACACAABACACCCABACCAABACACCCBACA
    CBACADEABACACCBACABACABACACCABFEGH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL39 $p |- ( ( b | b ) | ( b | ( a | b ) ) ) = b $=
    ( tshef nksL38 eqcom shefeq2 nksL33 nksL3 shefeq2212 shefeqeq shefeq1 eq6tr
    ax-A ) BBCBABCCCBBCABCBCCBBCABCABCBCABCCCCBBCABCABCABCAACAACBCAACCCCCABCCCC
    ABCAACAACBCAACCCCABCAACAACBCAACCCCCABCABCABCAACAACBCAACCCCCABCCCCABCAACAACB
    CAACCCCBBABCCABCBCBBCABCBCBABCCBADEFABCBCABCABCBCABCCCBBCABCABCBCABCCCABCBC
    ABCBGEFBABCAACAACBCAACCCCABCABCABCBBCABCAACAACBCAACCCCBABHEIBBCABCAACAACBCA
    ACCCCABCAACAACBCAACCCCCABCABCABCAACAACBCAACCCCCABCCCBABCAACAACBCAACCCCBABCA
    ACAACBCAACCCCABCAACAACBCAACCCCBABHEABCAACAACBCAACCCCBABHEJKABCAACAACBCAACCC
    CABCAACAACBCAACCCMABHL $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL40 $p |- a = ( ( a | a ) | ( b | a ) ) $=
    ( tshef nksL39 eqcom nksL38 shefeq22 nksL36 shefeq2 eq3tr ) AAACABACACCCAAC
    AABACCCCAACBACCAACABACACCCABACADEBACACABACCAAACABFGAABACCCBACAACBAHIJ $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL41 $p |- a = ( ( a | a ) | ( a | b ) ) $=
    ( tshef nksL39 eqcom nksL33 shefeq2 eqtr ) AAACAABCACCCAACABCCAACAABCACCCAA
    BCADEAABCACCABCAACABFGH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL42 $p |- ( b | a ) = ( a | b ) $=
    ( tshef nksL41 shefeq2 nksL33 eqcom shefeq22 ax-A shefeq1 eq6tr ) BACBAACAB
    CCCBAACAABCACCCCBAACAACAABCACCCAACCCCAACBCAABCACCCAACAACAABCACCCAACCCCAABCA
    CCABCAAACABCCBABDEABCAABCACCAACBAABCACCABCABFGHAACAABCACCCAACAACAABCACCCAAC
    CCBAACAACAABCACCCAACCCAACAABCACCCAACAABCACCFGEBAACBCAABCACCCAACAACAABCACCCA
    ACCCAACBCAABCACCCBBAAIGJAABCACCAACBIABFK $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL43 $p |- ( ( a | c ) | ( ( a | b ) | c ) ) = c $=
    ( tshef nksL42 nksL33 eqcom shefeq2 ax-A eq3tr ) ACDABDCDDABDCDACDDABDCDAAC
    DADDDCABDCDACDEACDAACDADDABDCDAACDADDACDACFGHCABIJ $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL44 $p |- ( ( b | c ) | ( ( a | b ) | c ) ) = c $=
    ( tshef nksL42 nksL34 eqtr ) BCDABDCDDABDCDBCDDCABDCDBCDEABCFG $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL45 $p |- ( ( b | a ) | ( ( a | c ) | b ) ) = b $=
    ( tshef nksL42 shefeq1 nksL43 eqtr ) BADACDBDDABDACDBDDBBADABDACDBDABEFACBG
    H $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL46 $p |- ( ( b | a ) | ( a | ( b | c ) ) ) = a $=
    ( tshef nksL42 shefeq2 nksL43 eqtr ) BADABCDDDBADBCDADDAABCDDBCDADBADBCDAEF
    BCAGH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL47 $p |- ( b | c ) = ( c | ( ( a | b ) | ( b | c ) ) ) $=
    ( tshef nksL46 eqcom nksL44 shefeq2 nksL42 eq3tr ) BCDABDBCDDBCDABDCDDDABDB
    CDDCDCABDBCDDDABDBCDDBCDABDCDDDBCDBCDABDCEFBCDABDCDDCABDBCDDABCGHCABDBCDDIJ
    $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL48 $p |- ( a | b ) = ( ( ( a | b ) | ( c | a ) ) | b ) $=
    ( tshef nksL45 eqcom nksL42 shefeq2 nksL44 eq3tr ) ABDABDCADDCADBDABDDDABDC
    ADDABDCADBDDDABDCADDBDABDCADDCADBDABDDDABDCADABDBEFCADBDABDDABDCADBDDABDCAD
    DABDCADBDGHABDCADBDDBABDCADDCABIHJ $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL49 $p |- ( b | ( ( a | b ) | ( c | a ) ) ) = ( a | b ) $=
    ( tshef nksL42 nksL48 eqcom eqtr ) BABDCADDDABDCADDBDABDABDCADDBEABDABDCADD
    BDABCFGH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL50 $p |- ( ( a | b ) | c ) = ( c | ( a | ( ( a | b ) | c ) ) ) $=
    ( tshef nksL43 eqcom shefeq2 nksL42 eq3tr ) ABDCDAABDCDDACDABDCDDDAABDCDDCD
    CAABDCDDDAABDCDDACDABDCDDDABDCDACABDCDEFACDABDCDDCAABDCDDABCEGCAABDCDDHI $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL51 $p |- ( a | ( b | ( a | b ) ) ) = ( a | a ) $=
    ( tshef nksL42 shefeq2 nksL50 shefeq21 nksL44 eq5tr ) ABABCCCAABCBCCABCBCAC
    AABCABCBCACCCABACABCBCACCCAACBABCCABCBCAABCBDEABCBCADABCBAFABCBACABCBCACABA
    DGBACABCBCACCAAABCBAHEI $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL52 $p |- ( ( b | a ) | ( a | b ) ) = ( ( a | b ) | ( a | b ) ) $=
    ( tshef nksL50 nksL47 eqcom shefeq2 eqtr ) BACABCCABCBBACABCCCCABCABCCBAABC
    DBBACABCCCABCABCABCBBACABCCCBABEFGH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL53 $p |- ( ( a | a ) | ( ( b | a ) | ( b | a ) ) ) = ( a | ( a | a ) ) $=
    ( tshef nksL44 eqcom shefeq22 nksL50 shefeq2 nksL42 nksL37 nksL40 shefeq222
    nksL23 nksL47 eq7tr ) AACBACBACCCAACBACAACBACCAACBACCAACCBACCCCCAACAACBACCA
    ACCBACCCAACBACAACBACCAACCCCAACBACAACAACBACCCCCAACBACAACACCCAACBACAAACCCCAAA
    CCBACAACBACCAACBACCAACCBACCCBACAACAACBACCAACBACCAACCBACCCBACAACBACCAACBACDE
    FBACAACBACCAACBACCAACCBACCCCAACBACCAACCBACCAACAACBACCAACCBACCBACAACBACCAACB
    ACCAACCBACCCCAACBACCAACBACGEHAACBACCAACCBACCBACAACBACCAACCCAACBACAACBACCAAC
    CIHAACBACCAACCAACAACBACCCBACAACAACBACJFAACBACCAAACBACAACAAACBACCABKELAACACA
    AACCBACAACAMFAAACCAACBACAAACCCCBAAACNEO $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL54 $p |- ( ( ( a | b ) | ( a | b ) ) | ( ( a | b ) | ( a | b ) ) ) = ( ( ( a | b ) | ( b | a ) ) | ( ( a | b ) | ( a | b ) ) ) $=
    ( tshef nksL42 shefeq1 shefeqeq nksL52 shefeq2 eq3tr ) ABCABCCABCABCCCBACAB
    CCBACABCCCABCBACCBACABCCCABCBACCABCABCCCABCABCCBACABCCABCABCCBACABCCABCBACA
    BCBADEABCBACABCBADEFBACABCCABCBACCBACABCCABCBACDEBACABCCABCABCCABCBACCABGHI
    $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL55 $p |- ( a | b ) = ( ( ( b | a ) | ( b | a ) ) | ( ( a | b ) | ( a | b ) ) ) $=
    ( tshef nksL40 nksL54 nksL52 shefeq1 eq3tr ) ABCABCABCCABCABCCCABCBACCABCAB
    CCCBACBACCABCABCCCABCABCDABEABCBACCBACBACCABCABCCBAFGH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL56 $p |- ( a | ( b | ( b | b ) ) ) = ( a | a ) $=
    ( tshef nksL53 eqcom shefeq2 nksL42 nksL40 shefeqeq shefeq22 nksL32 nksL51
    eq7tr ) ABBBCCCABBCABCABCCCCAABCABCCBBCCCAABCABCCBBCABCCBBCABCCCCCAABCABCAB
    CCCCAABCABCCABCCCAABCABCCAABCABCCCCCAACBBBCCBBCABCABCCCABBCABCABCCCBBBCCBAD
    EFBBCABCABCCCABCABCCBBCCAABCABCCBBCGFBBCBBCABCCBBCABCCCABCABCCABBBCABCCBBBC
    ABCCBAHBAHIJABCABCCBBCABCCBBCABCCCCABCABCABCCCAABCBBCDFABCABCABCCCABCABCCAB
    CCAABCABCCABCGFABCAABCABCCCABCABCCAAABCABCCCABCABKEJAABCABCCLM $.


$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
           Second Sheffer axiom
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)

  $( Proof of Sheffer's second axiom for Boolaen Algebra.  (Contributed by SW,
     14-May-2002.) $)
  nksT2 $p |- ( a | ( b | ( b | b ) ) ) = ( a | a ) $=
    ( nksL56 ) ABC $.


$(
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
         Lemmas nksL57 through nksL81 towards proving third Sheffer axiom
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
$)


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL57 $p |- ( ( ( a | a ) | ( ( ( a | b ) | ( a | b ) ) | c ) ) | ( ( a | a ) | ( ( ( a | b ) | ( a | b ) ) | c ) ) ) = ( a | ( d | ( d | d ) ) ) $=
    ( tshef nksL56 eqcom shefeq21 shefeqeq shefeq1 nksL42 shefeq2 nksL46 nksL33
    nksT2 shefeq12 ax-A shefeq221 eq11tr ) AAEABEABEECEEAAEABEABEECEEEAAEABEDDD
    EEECEEAAEABEDDDEEECEEEADDDEEEABEDDDEEECEEADDDEEEABEDDDEEECEEEADDDEEEABEDDDE
    EECEEDDDEEEDDDEEADDDEEEABEDDDEEECEEEDDDEEABEDDDEEECEADDDEEEEEABEDDDEEECEADD
    DEEEEDDDEEEABEDDDEEECEADDDEEEEABEDDDEEEDDDEEABEDDDEEEEEEABEDDDEEECEAADDDEEE
    AEEEABEDDDEEEABEDDDEEEAADDDEEEAEEEABEDDDEEEEEEAADDDEEEAEEADDDEEEABEDDDEEECE
    AADDDEEEAEEEABEDDDEEEDDDEEABEDDDEEEEEEAAEABEABEECEEAAEABEDDDEEECEEAAEABEABE
    ECEEAAEABEDDDEEECEEABEABEEABEDDDEEECAAEABEDDDEEEABEABEEABEDFGHABEABEEABEDDD
    EEECAAEABEDDDEEEABEABEEABEDFGHIAAEABEDDDEEECEEADDDEEEABEDDDEEECEEAAEABEDDDE
    EECEEADDDEEEABEDDDEEECEEAAEADDDEEEABEDDDEEECEADDDEEEAAEADOGJAAEADDDEEEABEDD
    DEEECEADDDEEEAAEADOGJIADDDEEEABEDDDEEECEEDDDEEEADDDEEEABEDDDEEECEEADDDEEEAB
    EDDDEEECEEEADDDEEEABEDDDEEECEEDFGDDDEEADDDEEEABEDDDEEECEEKADDDEEEABEDDDEEEC
    EEABEDDDEEECEADDDEEEEDDDEEABEDDDEEECEADDDEEEKLABEDDDEEECEADDDEEEEDDDEEKDDDE
    EABEDDDEEEDDDEEABEDDDEEEEEABEDDDEEECEADDDEEEEABEDDDEEEDDDEEABEDDDEEEEEDDDEE
    DDDEEABEDDDEEMGLADDDEEEAADDDEEEAEEABEDDDEEECEABEDDDEEEDDDEEABEDDDEEEEEAADDD
    EEEAEEADDDEEEADDDEENGPDDDEEABEDDDEEEAADDDEEEAEEEABEDDDEEEABEDDDEEEABEDDDEEE
    CEAADDDEEEAEEEABEDDDEEEAADDDEEEAEEEDDDEEDDDEEABQGRAADDDEEEAEEABEDDDEEECQADD
    DEENS $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL58 $p |- ( ( b | b ) | ( ( ( b | c ) | ( b | c ) ) | d ) ) = ( ( b | b ) | ( b | b ) ) $=
    ( wvf tshef nksL41 nksL57 shefeqeq nksL56 eq3tr ) AAEABEABEECEEAAEABEABEECE
    EAAEABEABEECEEEAAEABEABEECEEAAEABEABEECEEEEADDDEEEADDDEEEEAAEAAEEAAEABEABEE
    CEEAAEABEABEECEEFAAEABEABEECEEAAEABEABEECEEEADDDEEEAAEABEABEECEEAAEABEABEEC
    EEEADDDEEEABCDGABCDGHADDDEEEAAEADDDEEEAAEADIADIHJ $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL59 $p |- ( ( a | a ) | ( ( ( a | b ) | ( a | b ) ) | c ) ) = a $=
    ( tshef nksL58 nksL22 eqtr ) AADABDABDDCDDAADAADDAABCEAFG $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL60 $p |- a = ( ( a | a ) | ( d | ( ( b | a ) | ( b | a ) ) ) ) $=
    ( wvf wvg tshef nksL59 eqcom nksL49 shefeq2 shefeqeq shefeq22 eq3tr ) AAAFA
    BAFDBFFFABAFDBFFFFCABAFDBFFFABAFDBFFFFFECFFFFAAFCABAFDBFFFABAFDBFFFFFFAAFCB
    AFBAFFFFAAFABAFDBFFFABAFDBFFFFCABAFDBFFFABAFDBFFFFFECFFFFAABAFDBFFCABAFDBFF
    FABAFDBFFFFFECFFGHABAFDBFFFABAFDBFFFFCABAFDBFFFABAFDBFFFFFECFFFCABAFDBFFFAB
    AFDBFFFFFAAFCABAFDBFFFABAFDBFFFFEIJABAFDBFFFABAFDBFFFFBAFBAFFCAAFABAFDBFFFB
    AFABAFDBFFFBAFBADIBADIKLM $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL61 $p |- ( c | ( ( a | c ) | ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) ) ) = ( a | c ) $=
    ( tshef nksL42 shefeq2 nksL46 eqcom nksL33 shefeq12 ax-A shefeq221 eq7tr )
    CACDABDCDABDCDDDDCABDCDABDCDDACDDDABDCDABDCDDACDDCDABDCDABDCDDACDDABDCDCABD
    CDDDDABDCDABDCDDAACDADDDABDCDCABDCDDDDABDCDABDCDDAACDADDDABDCDABDCDAACDADDD
    ABDCDDDDAACDADDACDACDABDCDABDCDDDABDCDABDCDDACDDCABDCDABDCDDACDEFABDCDABDCD
    DACDDCECABDCDCABDCDDDABDCDABDCDDACDDABDCDCABDCDDDCCABDCGHFACDAACDADDABDCDAB
    DCDDABDCDCABDCDDDAACDADDACDACIHJCABDCDAACDADDDABDCDABDCDABDCDABDCDDAACDADDD
    ABDCDAACDADDDCCABKHLAACDADDABDCDABDCDKACIM $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL62 $p |- ( ( a | a ) | b ) = ( b | ( a | b ) ) $=
    ( wvf wvg tshef nksL61 eqcom nksL59 shefeq1 shefeqeq shefeq22 nksL50 nksL45
    wvh shefeq2 shefeq221 eq5tr ) AAEBEBAAEBEAAEACEACEEDEEBEAAEACEACEEDEEBEEEEB
    AAEBEABEABEEEEBABEABEEAAEAAEBEABEABEEEEEEBABEABEEABEBNEAEEABEBNEAEEEAAEBEAB
    EABEEEEEEBABEEBAAEBEAAEACEACEEDEEBEAAEACEACEEDEEBEEEEAAEBEAAEACEACEEDEBFGAA
    EACEACEEDEEBEAAEACEACEEDEEBEEABEABEEAAEBEBAAEACEACEEDEEBEABEAAEACEACEEDEEBE
    ABEAAEACEACEEDEEABACDHIAAEACEACEEDEEABACDHIJKAAEBEABEABEEEABEABEEAAEAAEBEAB
    EABEEEEEBAAEBABEABEELOAAEABEBNEAEEABEBNEAEEEAAEBEABEABEEEABEABEEBAABEBNEAEE
    AABEBNEAEEABEBNEAEEABANMGABEBNEAEEABANMGJPABEABEEABEBNEAEEABEBNEAEEEAAEBEAB
    EABEEEEEABEBABEBNEAEAAEBEABEABEEEHOQ $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL63 $p |- ( a | ( a | b ) ) = ( ( b | b ) | a ) $=
    ( tshef nksL42 shefeq2 nksL62 eqcom eqtr ) AABCCABACCBBCACABCBACABADEBBCACA
    BACCBAFGH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL66 $p |- ( a | c ) = ( ( ( a | c ) | ( a | c ) ) | ( ( c | a ) | b ) ) $=
    ( tshef nksL59 eqcom nksL52 shefeqeq shefeq21 nksL30 eq3tr ) ACDACDACDDACDC
    ADDACDCADDDBDDACDACDDCADCADDCADCADDDBDDACDACDDCADBDDACDACDDACDCADDACDCADDDB
    DDACDACDCADBEFACDCADDACDCADDDCADCADDCADCADDDBACDACDDACDCADDCADCADDACDCADDCA
    DCADDCAGCAGHICADCADDCADCADDDCADBACDACDDCADCADJIK $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL67 $p |- ( ( a | b ) | ( a | b ) ) = ( ( a | b ) | ( ( ( b | a ) | ( b | a ) ) | c ) ) $=
    ( tshef nksL59 eqcom nksL55 shefeqeq shefeq21 nksL30 shefeq1 eq3tr ) ABDABD
    DABDABDDABDABDDDABDABDDBADBADDDABDABDDBADBADDDDCDDABDABDDABDABDDDBADBADDCDD
    ABDBADBADDCDDABDABDDABDABDDDABDABDDBADBADDDABDABDDBADBADDDDCDDABDABDDABDABD
    DBADBADDCEFABDABDDBADBADDDABDABDDBADBADDDDBADBADDCABDABDDABDABDDDABDABDDBAD
    BADDDBADABDABDDBADBADDDBADBADABDABDDBADBADDDBAGFBADABDABDDBADBADDDBAGFHIABD
    ABDDABDABDDDABDBADBADDCDABDABDJKL $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL68 $p |- ( a | ( ( ( b | c ) | ( b | a ) ) | ( ( b | c ) | ( b | a ) ) ) ) = ( ( b | b ) | a ) $=
    ( tshef nksL42 nksL63 eqcom nksL33 shefeq222 shefeq22 ax-A shefeq21 shefeq2
    nksL62 eq8tr ) ABCDBADDBCDBADDDDBCDBADDBCDBADDDADAABCDBADDDDAABCDBBADBDDDDD
    AABCDBCDBBADBDDDBCDDDDDABCDADBBADBDDDBCDBCDBBADBDDDBCDDDDDABBADBDDDABADDBBD
    ADBCDBADDBCDBADDDAEAABCDBADDDDBCDBADDBCDBADDDADABCDBADDFGBADBBADBDDBCDAABBA
    DBDDBADBAHGIBCDBBADBDDDBCDBCDBBADBDDDBCDDDAABCDBCDBBADBDDDBCDDDBCDBBADBDDDB
    CDBBADBDDHGJABCDADBBADBDDDBCDBCDBBADBDDDBCDDDABCDADBBADBDDDAABCKGLBCDADBBAD
    BDDDBCDBCDBBADBDDDBCDDDDBBADBDDABBADBDDBCDAKMBBADBDDBADABAHMBBDADABADDBANGO
    $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL69 $p |- ( ( b | c ) | a ) = ( a | ( ( ( c | b ) | ( ( ( b | c ) | ( b | c ) ) | a ) ) | ( ( c | b ) | ( ( ( b | c ) | ( b | c ) ) | a ) ) ) ) $=
    ( tshef nksL41 shefeq1 nksL68 eqcom nksL55 shefeqeq shefeq2 eq3tr ) BCDADBC
    DBCDDBCDBCDDDADABCDBCDDCBDCBDDDBCDBCDDADDBCDBCDDCBDCBDDDBCDBCDDADDDDACBDBCD
    BCDDADDCBDBCDBCDDADDDDBCDBCDBCDDBCDBCDDDABCDBCDEFABCDBCDDCBDCBDDDBCDBCDDADD
    BCDBCDDCBDCBDDDBCDBCDDADDDDBCDBCDDBCDBCDDDADABCDBCDDCBDCBDDGHBCDBCDDCBDCBDD
    DBCDBCDDADDBCDBCDDCBDCBDDDBCDBCDDADDDCBDBCDBCDDADDCBDBCDBCDDADDDABCDBCDDCBD
    CBDDDBCDBCDDADDCBDBCDBCDDADDBCDBCDDCBDCBDDDBCDBCDDADDCBDBCDBCDDADDBCDBCDDCB
    DCBDDDCBDBCDBCDDADCBDBCDBCDDCBDCBDDDCBIHFBCDBCDDCBDCBDDDCBDBCDBCDDADCBDBCDB
    CDDCBDCBDDDCBIHFJKL $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL70 $p |- ( ( b | c ) | a ) = ( a | ( c | b ) ) $=
    ( tshef nksL69 nksL67 eqcom shefeqeq shefeq2 nksL30 eq3tr ) BCDADACBDBCDBCD
    DADDCBDBCDBCDDADDDDACBDCBDDCBDCBDDDDACBDDABCECBDBCDBCDDADDCBDBCDBCDDADDDCBD
    CBDDCBDCBDDDACBDBCDBCDDADDCBDCBDDCBDBCDBCDDADDCBDCBDDCBDCBDDCBDBCDBCDDADDCB
    AFGCBDCBDDCBDBCDBCDDADDCBAFGHICBDCBDDCBDCBDDDCBDACBDCBDJIK $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL71 $p |- ( ( ( b | c ) | ( b | c ) ) | a ) = ( a | ( ( c | b ) | ( c | b ) ) ) $=
    ( tshef nksL68 eqcom nksL52 shefeq1 shefeqeq shefeq2 nksL66 eq3tr ) BCDBCDD
    ADABCDCBDDBCDADDBCDCBDDBCDADDDDACBDCBDDBCDADDCBDCBDDBCDADDDDACBDCBDDDABCDCB
    DDBCDADDBCDCBDDBCDADDDDBCDBCDDADABCDCBDEFBCDCBDDBCDADDBCDCBDDBCDADDDCBDCBDD
    BCDADDCBDCBDDBCDADDDABCDCBDDBCDADDCBDCBDDBCDADDBCDCBDDBCDADDCBDCBDDBCDADDBC
    DCBDDCBDCBDDBCDADCBGHBCDCBDDCBDCBDDBCDADCBGHIJCBDCBDDBCDADDCBDCBDDBCDADDDCB
    DCBDDACBDCBDDBCDADDCBDCBDCBDDBCDADDCBDCBDCBDCBDDBCDADDCABKFCBDCBDCBDDBCDADD
    CABKFIJL $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL72 $p |- ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) = ( ( b | a ) | ( ( a | a ) | ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) ) ) $=
    ( tshef nksL3 eqcom nksL33 shefeq2 nksL61 shefeq1 eq3tr ) BADBCDADBCDADDDAB
    ADBCDADBCDADDDDAADAADBADBCDADBCDADDDDAADDDDABADBCDADBCDADDDDAADBADBCDADBCDA
    DDDDDBADAADBADBCDADBCDADDDDDABADBCDADBCDADDDDAADAADBADBCDADBCDADDDDAADDDDBA
    DBCDADBCDADDDABADBCDADBCDADDDEFAADAADBADBCDADBCDADDDDAADDDAADBADBCDADBCDADD
    DDABADBCDADBCDADDDDAADBADBCDADBCDADDDGHABADBCDADBCDADDDDBADAADBADBCDADBCDAD
    DDDBCAIJK $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL73 $p |- ( ( b | a ) | ( ( ( b | c ) | a ) | ( ( b | c ) | a ) ) ) = ( ( b | b ) | a ) $=
    ( tshef nksL72 nksL60 eqcom shefeq2 nksL70 nksL63 eq4tr ) BADBCDADBCDADDDBA
    DAADBADBCDADBCDADDDDDBADADAABDDBBDADABCEAADBADBCDADBCDADDDDABADAAADBADBCDAD
    BCDADDDDABCDBADFGHABAIABJK $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL74 $p |- ( ( a | a ) | c ) = ( ( ( ( a | b ) | c ) | ( ( a | b ) | c ) ) | ( a | a ) ) $=
    ( tshef nksL73 eqcom nksL50 shefeq22 nksL40 shefeq21 nksL66 shefeq2 eq5tr )
    AADCDACDABDCDABDCDDDABDCDABDCDDAACDABDCDABDCDDDDDABDCDABDCDDAAADCDDDABDCDAB
    DCDDAADAADDAADCDDDABDCDABDCDDAADDACDABDCDABDCDDDAADCDCABEFACABDCDABDCDDGACD
    ABDCDABDCDDDAADCDAABDCDABDCDDCABEHAAADAADDAADCDABDCDABDCDDAAIJAADAADDAADCDD
    AADABDCDABDCDDAADAADAADDAADCDDACAKFLM $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL75 $p |- ( ( a | a ) | ( ( c | ( a | b ) ) | ( c | ( a | b ) ) ) ) = ( ( a | a ) | c ) $=
    ( tshef nksL71 eqcom nksL74 eqtr ) AADCABDDCABDDDDABDCDABDCDDAADDAADCDABDCD
    ABDCDDAADDAADCABDDCABDDDDAADABDCEFAADCDABDCDABDCDDAADDABCGFH $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL76 $p |- ( ( b | ( a | c ) ) | ( a | a ) ) = ( ( a | a ) | ( ( a | a ) | b ) ) $=
    ( tshef nksL22 eqcom shefeq1 nksL63 nksL75 shefeq2 eq3tr ) BACDDAADDBACDDBA
    CDDDBACDDBACDDDDAADDAADAADBACDDBACDDDDDAADAADBDDBACDDBACDDBACDDDBACDDBACDDD
    DAADBACDDBACDDDBACDDBACDDDDBACDDBACDDEFGAADAADBACDDBACDDDDDBACDDBACDDDBACDD
    BACDDDDAADDAADBACDDBACDDDHFAADBACDDBACDDDDAADBDAADACBIJK $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL77 $p |- ( ( ( a | b ) | ( a | b ) ) | ( c | a ) ) = ( ( ( a | b ) | ( a | b ) ) | ( c | c ) ) $=
    ( tshef nksL75 eqcom nksL45 shefeqeq shefeq2 eqtr ) ABDABDDCADDABDABDDCADAB
    DCDDCADABDCDDDDABDABDDCCDDABDABDDCADABDCDDCADABDCDDDDABDABDDCADDABDCCADEFCA
    DABDCDDCADABDCDDDCCDABDABDDCADABDCDDCCADABDCDDCACBGACBGHIJ $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL78 $p |- ( ( ( b | c ) | ( b | c ) ) | a ) = ( c | ( ( b | a ) | ( b | a ) ) ) $=
    ( nksL45 shefeq2 nksL70 nksL22 shefeq1 nksL63 nksL76 nksL73 nksL47 shefeqeq
    tshef eqcom nksL75 nksL71 eq11tr ) BCNBCNNANBCNBCNNABNBCNANNNBCNANABNNBCNBC
    NNNBCNANABNNBCNANABNNNBCNANABNNBCNANABNNNNBCNBCNNNBCNBCNNBCNBCNNBCNANABNNBC
    NANABNNNNNBCNANABNNBCNANABNNNBCNABNNNBCNBCNNNBCNBCNNBCNABNNBCNANABNNBCNANAB
    NNNNNBCNBCNNBCNBCNNABNNNABNABNNCABNBCNNNCABNBCNNNNNABNABNNCNCBANBANNNABNABN
    NBCNBCNNNAABNBCNANNBCNBCNNABNBCNANNABACDOEBCNANABNNBCNBCNNNBCNBCNNABNBCNANN
    NBCNBCNNBCNANABNFOBCNANABNNBCNANABNNBCNANABNNNBCNANABNNBCNANABNNNNBCNBCNNBC
    NANABNNBCNANABNNNBCNANABNNBCNANABNNNNBCNANABNNBCNANABNNGOHBCNBCNNBCNBCNNBCN
    ANABNNBCNANABNNNNNBCNANABNNBCNANABNNNBCNANABNNBCNANABNNNNBCNBCNNNBCNBCNNBCN
    ANABNNBCNANABNNNIOBCNANABNNBCNANABNNNBCNABNNNBCNBCNNNBCNBCNNBCNBCNNBCNANABN
    NBCNANABNNNNNBCNBCNANABNNBCNANABNNNABNJOBCNBCNNBCNANABNNBCNANABNNNBCNABNNFB
    CNABNNBCNANABNNBCNANABNNNNBCNBCNNABNNBCNBCNNABNBCNAKEBCNBCNNABNIBCNBCNNCABN
    BCNNNCABNBCNNNNABNABNNBCNCABNBCNNNBCNCABNBCNNNABCLABCLMEABNBCNCPCABQR $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL79 $p |- ( a | ( c | ( ( a | b ) | ( a | b ) ) ) ) = ( ( b | c ) | a ) $=
    ( tshef nksL42 shefeqeq shefeq22 nksL78 eqcom shefeq2 nksL62 nksL30 shefeq1
    eq4tr ) ACABDABDDDDACBADBADDDDABCDBCDDADDBCDBCDDBCDBCDDDADBCDADABDABDDBADBA
    DDCAABDBADABDBADBAEBAEFGCBADBADDDBCDBCDDADABCDBCDDADCBADBADDDABCHIJBCDBCDDB
    CDBCDDDADABCDBCDDADDBCDBCDDAKIBCDBCDDBCDBCDDDBCDABCDBCDLMN $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL80 $p |- ( a | ( ( b | a ) | c ) ) = ( ( ( b | b ) | c ) | a ) $=
    ( tshef nksL70 eqcom nksL79 nksL42 shefeq2 nksL77 nksL78 eq6tr ) ABADCDDCBA
    DDADABADACDACDDDDAACDACDDBADDDAACDACDDBBDDDACABBDDABBDDDDDBBDCDADCBADDADABA
    DCDDACBADEFABADACDACDDDDCBADDADACBADGFBADACDACDDDACDACDDBADDAACDACDDBADHIAC
    DACDDBADDACDACDDBBDDAACBJIACDACDDBBDDCABBDDABBDDDDABBDACKIABBDCGL $.


  $( Lemma for ~ nksT1 , ~ nksT2 , and/or ~ nksT3 .  (Contributed by SW,
     14-May-2002.) $)
  nksL81 $p |- ( ( ( c | a ) | ( a | b ) ) | ( ( c | a ) | ( a | b ) ) ) = ( ( ( b | b ) | ( c | a ) ) | a ) $=
    ( nksL40 nksL75 shefeq2 nksL22 shefeq1 nksL70 nksL79 nksL77 nksL78 eq11tr
    tshef eqcom ) CANABNNCANABNNNCANABNNCANABNNNCANABNNCANABNNNNAANCANABNNCANAB
    NNNNNCANABNNCANABNNNCANABNNCANABNNNNAANCANNNCANABNNAANCANNNAANCANNABNCANNNA
    ABNCANNNCANABNNANAABNACANNACANNNNNAACANNACANNNBBNNNACANABBNNABBNNNNNBBNCANN
    ANAACANNACANNNBANNNCANABNNCANABNNNAANDAANCANABNNCANABNNNNAANCANNCANABNNCANA
    BNNNCANABNNCANABNNNNABCANEFCANABNNCANABNNNCANABNNCANABNNNNCANABNNAANCANNCAN
    ABNNGHAANCANNCANABNIAANCANNAABNCANNAAANCANNACDOHCANABNNANAABNCANNNACANABNIO
    AABNACANNACANNNNNCANABNNANACANABNJOABNACANNACANNNNACANNACANNNBANNAACANNACAN
    NNABIFACANNACANNNBANNACANNACANNNBBNNAACANBKFACANNACANNNBBNNCANABBNNABBNNNNA
    BBNACANLFABBNCANJM $.


$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
           Third Sheffer axiom
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)

  $( Proof of Sheffer's third axiom for Boolaen Algebra.  (Contributed by SW,
     14-May-2002.) $)
  nksT3 $p |- ( ( ( b | b ) | a ) | ( ( c | c ) | a ) ) = ( ( a | ( b | c ) ) | ( a | ( b | c ) ) ) $=
    ( tshef nksL70 shefeq2 nksL42 nksL40 shefeq11 nksL80 eqcom shefeq1 shefeqeq
    nksL81 nksL60 shefeq12 nksL78 nksL50 nksL75 nksL31 eq19tr ) BBDADCCDADDBBDA
    DACCDDDACCDDBBDADDAADAADDCCDDBBDADDBBDADAADBBDADDCCDDDCCDAADBBDADDDBBDADDAA
    DBBDADDBBDADCDDAADBBDADDBBDADCDDDABBDADCDDABBDADCDDDCBBDBBDDDADCBBDBBDDDADD
    CBBDBBDDDCBBDBBDDDDBBDCBBDBBDDDDDADCBBDBBDDDCBBDBBDDDDBBDCBBDBBDDDDDADDCBBD
    BBDDDCBBDBBDDDDBDADCBBDBBDDDCBBDBBDDDDBDADDBBDBBDDCDADBBDBBDDCDADDBCBBDBBDD
    DCBBDBBDDDDDADBCBBDBBDDDCBBDBBDDDDDADDCBDCBDDBBDBBDDDADCBDCBDDBBDBBDDDADDCB
    DCBDDBBBDCBDDDBBBDCBDDDDDADCBDCBDDBBBDCBDDDBBBDCBDDDDDADDCBDCBDDBCBDBBBDCBD
    DDDDBCBDBBBDCBDDDDDDDADCBDCBDDBCBDBBBDCBDDDDDBCBDBBBDCBDDDDDDDADDCBDCBDDBDA
    DCBDCBDDBDADDBCBDCBDDDADBCBDCBDDDADDCBDADCBDADDABCDDABCDDDCCDADACCDDBBDADAC
    CEFACCDDBBDADGAAADAADDCCDBBDADAAHIBBDADAADBBDADDCCDDDAADAADDCCDDBBDADDBBDAD
    AADCCDJKCCDAADBBDADDDBBDADDBBDADAADBBDADDCCDDDBBDADCCDAADBBDADDEKAADBBDADDB
    BDADCDDAADBBDADDBBDADCDDDCCDAADBBDADDDBBDADDBBDADCAADNKAADBBDADDBBDADCDDABB
    DADCDDAADBBDADDBBDADCDDABBDADCDDAADBBDADDABBDADCDAAADBBDADDABBDHKLAADBBDADD
    ABBDADCDAAADBBDADDABBDHKLMABBDADCDDBBDBBDDCDADABBDADCDDBBDBBDDCDADABBDCJABB
    DCJMBBDBBDDCDADCBBDBBDDDADBBDBBDDCDADCBBDBBDDDADBBDBBDDCDCBBDBBDDDACBBDBBDD
    GLBBDBBDDCDCBBDBBDDDACBBDBBDDGLMCBBDBBDDDADCBBDBBDDDCBBDBBDDDDBBDCBBDBBDDDD
    DADCBBDBBDDDADCBBDBBDDDCBBDBBDDDDBBDCBBDBBDDDDDADCBBDBBDDDCBBDBBDDDCBBDBBDD
    DDBBDCBBDBBDDDDDACBBDBBDDDBBDHLCBBDBBDDDCBBDBBDDDCBBDBBDDDDBBDCBBDBBDDDDDAC
    BBDBBDDDBBDHLMCBBDBBDDDCBBDBBDDDDBBDCBBDBBDDDDDADCBBDBBDDDCBBDBBDDDDBDADCBB
    DBBDDDCBBDBBDDDDBBDCBBDBBDDDDDADCBBDBBDDDCBBDBBDDDDBDADBBDCBBDBBDDDDBCBBDBB
    DDDCBBDBBDDDDABBBDCBBDBBDDDDBBCOKPBBDCBBDBBDDDDBCBBDBBDDDCBBDBBDDDDABBBDCBB
    DBBDDDDBBCOKPMCBBDBBDDDCBBDBBDDDDBDADBCBBDBBDDDCBBDBBDDDDDADCBBDBBDDDCBBDBB
    DDDDBDADBCBBDBBDDDCBBDBBDDDDDADCBBDBBDDDCBBDBBDDDDBDBCBBDBBDDDCBBDBBDDDDDAB
    CBBDBBDDDCBBDBBDDDELCBBDBBDDDCBBDBBDDDDBDBCBBDBBDDDCBBDBBDDDDDABCBBDBBDDDCB
    BDBBDDDELMBCBBDBBDDDCBBDBBDDDDDADCBDCBDDBBDBBDDDADBCBBDBBDDDCBBDBBDDDDDADCB
    DCBDDBBDBBDDDADBCBBDBBDDDCBBDBBDDDDDCBDCBDDBBDBBDDDACBDCBDDBBDBBDDDBCBBDBBD
    DDCBBDBBDDDDDBBDBBDDCBQKLBCBBDBBDDDCBBDBBDDDDDCBDCBDDBBDBBDDDACBDCBDDBBDBBD
    DDBCBBDBBDDDCBBDBBDDDDDBBDBBDDCBQKLMCBDCBDDBBDBBDDDADCBDCBDDBBBDCBDDDBBBDCB
    DDDDDADCBDCBDDBBDBBDDDADCBDCBDDBBBDCBDDDBBBDCBDDDDDADBBDBBDDBBBDCBDDDBBBDCB
    DDDDCBDCBDDABBDBBBDCBDDDBBDBBBDCBDDDBBBDCBDDBBCHFBBBDCBDDBBCHFMPBBDBBDDBBBD
    CBDDDBBBDCBDDDDCBDCBDDABBDBBBDCBDDDBBDBBBDCBDDDBBBDCBDDBBCHFBBBDCBDDBBCHFMP
    MCBDCBDDBBBDCBDDDBBBDCBDDDDDADCBDCBDDBCBDBBBDCBDDDDDBCBDBBBDCBDDDDDDDADCBDC
    BDDBBBDCBDDDBBBDCBDDDDDADCBDCBDDBCBDBBBDCBDDDDDBCBDBBBDCBDDDDDDDADBBBDCBDDD
    BBBDCBDDDDBCBDBBBDCBDDDDDBCBDBBBDCBDDDDDDCBDCBDDABBBDCBDDDBCBDBBBDCBDDDDDBB
    BDCBDDDBCBDBBBDCBDDDDDBBDCBDDCBDBBBDCBDDDDBBBCBDRFBBDCBDDCBDBBBDCBDDDDBBBCB
    DRFMPBBBDCBDDDBBBDCBDDDDBCBDBBBDCBDDDDDBCBDBBBDCBDDDDDDCBDCBDDABBBDCBDDDBCB
    DBBBDCBDDDDDBBBDCBDDDBCBDBBBDCBDDDDDBBDCBDDCBDBBBDCBDDDDBBBCBDRFBBDCBDDCBDB
    BBDCBDDDDBBBCBDRFMPMCBDCBDDBCBDBBBDCBDDDDDBCBDBBBDCBDDDDDDDADCBDCBDDBDADCBD
    CBDDBCBDBBBDCBDDDDDBCBDBBBDCBDDDDDDDADCBDCBDDBDADCBDCBDDBCBDBBBDCBDDDDDBCBD
    BBBDCBDDDDDDDCBDCBDDBDACBDBBBDCBDDDBSLCBDCBDDBCBDBBBDCBDDDDDBCBDBBBDCBDDDDD
    DDCBDCBDDBDACBDBBBDCBDDDBSLMCBDCBDDBDADBCBDCBDDDADCBDCBDDBDADBCBDCBDDDADCBD
    CBDDBDBCBDCBDDDABCBQLCBDCBDDBDBCBDCBDDDABCBQLMBCBDCBDDDADCBDADBCBDCBDDDADCB
    DADBCBDCBDDDCBDACBTLBCBDCBDDDCBDACBTLMCBDADABCDDCBDADABCDDACBEACBEMUA $.


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
  $c == v ^ 1 0 ' C =< =<2 ->0 ->1 ->2 ->3 ->4 ->5 ==0 ==1 ==2 ==3 ==4 ==5 ==OA
    , <->3 <->1 u3 ^3 $.
