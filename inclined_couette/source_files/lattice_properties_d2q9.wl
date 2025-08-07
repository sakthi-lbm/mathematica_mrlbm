(* ::Package:: *)

(*Properties of D2Q9 lattice stencils*)
w={4/9,
1/9,1/9,1/9,1/9,
1/36,1/36,1/36,1/36};

cx={0,1,0,-1,0,1,-1,-1,1};
cy={0,0,1,0,-1,1,1,-1,-1};

Hxx[i_]:=cx[[i]]^2-1/3;
Hyy[i_]:=cy[[i]]^2-1/3;
Hxy[i_]:=cx[[i]]*cy[[i]];

HxxI[i_]:=cx[[i+1]]^2;
HyyI[i_]:=cy[[i+1]]^2;
HxyI[i_]:=cx[[i+1]]*cy[[i+1]];
