(* ::Package:: *)

(*distribution functions*)
f[i_]:=\[Rho]*w[[i]]*(1+3*(ux*cx[[i]]+uy*cy[[i]])+9*(mxx*Hxx[i]+myy*Hyy[i]+2*mxy*Hxy[i])/2);
feq[i_]:=\[Rho]*w[[i]]*(1+3*(ux*cx[[i]]+uy*cy[[i]])+9*(ux*ux*Hxx[i]+uy*uy*Hyy[i]+2*ux*uy*Hxy[i])/2);

(*Bounadry Equations*)
eqrhoS = Simplify[(1 - omega)*Total[f[Os + 1]] + omega*Total[feq[Os + 1]]] - rhoI == 0;
eqrhoW = Simplify[Total[f[Is + 1]]] - rhoI == 0;
eqrhoEq = Simplify[Total[feq[Os + 1]]] - rhoI == 0;
equxW = Simplify[Total[f[Is + 1] * cx[[Is + 1]]]] - rhoI*uxI == 0;
equyW = Simplify[Total[f[Is + 1] * cy[[Is + 1]]]] - rhoI*uyI == 0;
eqmxx  = Simplify[Total[f[Is + 1] * Hxx[Is + 1]]] - rhoI*mxxI == 0;
eqmyy  = Simplify[Total[f[Is + 1] * Hyy[Is + 1]]] - rhoI*myyI == 0;
eqmxy  = Simplify[Total[f[Is + 1] * Hxy[Is + 1]]] - rhoI*mxyI == 0;
