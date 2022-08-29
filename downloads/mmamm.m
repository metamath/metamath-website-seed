(* ::Package:: *)

Clear[syms,stmts,scope,append,frame,checkExpr,exec,prove,verify]
On[Assert];
regex[s_]:=RegularExpression["(?s)"<>s]
append[w_,a_->b_]:=(Assert[!KeyExistsQ[w,a]];AppendTo[w,a->b])
Attributes[append]={HoldFirst};
syms=<||>;stmts=<||>;scope={{}};
checkExpr[s_]:=(Assert[KeyExistsQ[syms,#]]&/@s;Assert[MatchQ[syms[[s[[1]]]],_const]])
frame[s_,trim_:True]:=(checkExpr[s];With[{ef=Flatten[scope,1]},With[{vrs=Union@Select[Flatten[{#[[2]]&/@Cases[ef,_hyp],s}],MatchQ[syms[[#]],_var]&]},{Union@@(Subsets[#,{2}]&/@Select[Cases[ef,dv[d_]:>If[trim,Intersection[d,vrs],d]],Length[#]>1&]),Cases[ef,vhyp[_,{_,v_}]/;MemberQ[vrs,v]],Cases[ef,_hyp]}]])
exec[c:const[s_]]:=append[syms,s->c]
exec[v:var[s_]]:=append[syms,s->v]
exec[dv[s_]]:=(Assert[MatchQ[syms[[#]],_var]]&/@s;With[{u=Union[s]},Assert[Length@u==Length@s];AppendTo[scope[[-1]],dv[u]]])
exec[f:vhyp[l_,t:{_,_}]]:=(Assert[MatchQ[Lookup[syms,t],{_const,_var}]];AppendTo[scope[[-1]],f];append[stmts,l->f])
exec[h:hyp[l_,s_]]:=(checkExpr[s];AppendTo[scope[[-1]],h];append[stmts,l->h])
exec[open]:=AppendTo[scope,{}]
exec[close]:=(scope=Most[scope])
exec[ax[l_,s_]]:=append[stmts,l->thm[l,s,frame[s]]]
exec[thm[l_,s_,p_]]:=(Check[prove[s,p,frame[s,False]],Message[prove::fail,l]];append[stmts,l->thm[l,s,frame[s]]])
prove::fail="Proof failed for `1`";
prove[s_,p_,{d_,v_,h_}]:=Module[{stk={},read},read[vhyp[_,t_]|hyp[_,t_]|mark[t_]]:=AppendTo[stk,t];read[thm[_,ts_,{td_,tv_,th_}]]:=With[{lv=-Length[tv],lh=-Length[th]},With[{sv=stk[[lv+lh;;lh-1]],sh=stk[[lh;;]]},With[{subst=#[[1,2,2]]->Sequence@@Rest[#[[2]]]&/@Transpose[{tv,sv}]},stk=Drop[stk,lv+lh];Assert[(#[[1,2]]/.subst)===#[[2]]]&/@Transpose[{th,sh}];
Outer[Assert[MemberQ[d,Sort[{##}]]]&,Sequence@@(Select[{#}/.subst,MatchQ[syms[[#]],_var]&]&/@#)]&/@td;
AppendTo[stk,ts/.subst]]]];If[p[[1]]==="(",With[{idx=FirstPosition[p,")"][[1]]},Module[{l=Join[v,h,Lookup[stmts,p[[2;;idx-1]]]]},StringCases[StringJoin[p[[idx+1;;]]],{regex["([U-Y]*)([A-T])"]:>read[l[[FromDigits[ToCharacterCode["$1"]-84,5]20+ToCharacterCode["$2"][[1]]-64]]],"Z":>AppendTo[l,mark[stk[[-1]]]]}]]],read/@Lookup[stmts,p]];Assert[stk==={s}]]
verify[mm_]:=Scan[exec,StringCases[StringReplace[StringReplace[mm,regex["\\$\\(.*?\\$\\)"]->""],WhitespaceCharacter..->" "],{regex["\\$c (.*?) \\$\\."]:>Sequence@@const/@StringSplit["$1"," "],regex["\\$v (.*?) \\$\\."]:>Sequence@@var/@StringSplit["$1"," "],regex["\\$d (.*?) \\$\\."]:>dv@StringSplit["$1"," "],regex["(\\S+) \\$f (.*?) \\$\\."]:>vhyp["$1",StringSplit["$2"," "]],regex["(\\S+) \\$e (.*?) \\$\\."]:>hyp["$1",StringSplit["$2"," "]],regex["(\\S+) \\$a (.*?) \\$\\."]:>ax["$1",StringSplit["$2"," "]],regex["(\\S+) \\$p (.*?) \\$\\= (.*?) \\$\\."]:>thm["$1",StringSplit["$2"," "],StringSplit["$3"," "]],regex["\\$\\{"]:>open,regex["\\$\\}"]:>close}]];


(* ::Code:: *)
(*verify[Import["C:\\metamath\\hol.mm","Text"]]*)
