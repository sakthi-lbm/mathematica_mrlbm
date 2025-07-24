(* ::Package:: *)

(*distribution functions*)
f[i_]:=w[[i]]*(\[Rho]+3*(\[Rho]ux*cx[[i]]+\[Rho]uy*cy[[i]])+9*(\[Rho]mxx*Hxx[i]+\[Rho]myy*Hyy[i]+2*\[Rho]mxy*Hxy[i])/2);
feq[i_]:=w[[i]]*(\[Rho]+3*(\[Rho]ux*cx[[i]]+\[Rho]uy*cy[[i]])+9*((\[Rho]ux*\[Rho]ux*Hxx[i]/\[Rho])+(\[Rho]uy*\[Rho]uy*Hyy[i]/\[Rho])+(2*\[Rho]ux*\[Rho]uy*Hxy[i]/\[Rho]))/2);

(*Bounadry Equations*)
eqrhoS = Simplify[(1 - omega)*Total[f[Os + 1]] + omega*Total[feq[Os + 1]]] - rhoI == 0;
eqrhoW = Simplify[Total[f[Is + 1]]] - rhoI == 0;
eqrhoEq = Simplify[Total[feq[Os + 1]]] - rhoI == 0;
eqrhoux  = Simplify[Total[f[Is + 1] * cx[[Is + 1]]]] - rhoIuxI == 0;
eqrhouy  = Simplify[Total[f[Is + 1] * cy[[Is + 1]]]] - rhoIuyI == 0;
eqrhomxx  = Simplify[Total[f[Is + 1] * Hxx[Is + 1]]] - rhoImxxI == 0;
eqrhomyy  = Simplify[Total[f[Is + 1] * Hyy[Is + 1]]] - rhoImyyI == 0;
eqrhomxy  = Simplify[Total[f[Is + 1] * Hxy[Is + 1]]] - rhoImxyI == 0;
eqrhoinc = \[Rho]mxx + \[Rho]mxx - (\[Rho]ux*\[Rho]ux/\[Rho]) - (\[Rho]uy*\[Rho]uy/\[Rho]) == 0;
