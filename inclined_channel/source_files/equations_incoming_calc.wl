(* ::Package:: *)

p[i_]:=pop[i];
rhoIn=Total[pop/@Is];

cxI={0,1,0,-1,0,1,-1,-1,1};
cyI={0,0,1,0,-1,1,1,-1,-1};

HxxI[i_]:=cxI[[i+1]]^2;
HyyI[i_]:=cyI[[i+1]]^2;
HxyI[i_]:=cxI[[i+1]]*cyI[[i+1]];

MxxIn=Total[pop[#]*HxxI[#]&/@Is];
MyyIn=Total[pop[#]*HyyI[#]&/@Is];
MxyIn=Total[pop[#]*HxyI[#]&/@Is];

