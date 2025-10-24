(* ::Package:: *)

PrintBoundaryResultsVel[] := (
  Print[Style["------------------------------------ ", Blue, 14], 
    Style[bcName, Blue, 14], 
    Style[" ------------------------------------ ", Blue, 14]];
    
  Print[Row[{
    Style["ux = "], Style[ux, RGBColor[0.2, 0.5, 0.3]], Style[";"], 
    Spacer[20], 
    Style["uy = "], Style[uy, RGBColor[0.2, 0.5, 0.3]]
  }], Style[";"], Spacer[20], 
  "Is = ", Style[Is, RGBColor[0.2, 0.5, 0.3]], Style[";"], Spacer[20],
  "Os = ", Style[Os, RGBColor[0.2, 0.5, 0.3]], Style[";"], "\n"];
  
  Print["rhoI = " ,Style[rhoIn, RGBColor[0.2, 0.5, 0.3]]];
  Print["inv_rhoI = 1.0/rhoI "];
  Print["uxI = " ,"(",Style[uxIn, RGBColor[0.2, 0.5, 0.3]],")","*"," inv_rhoI "];
  Print["uyI = " ,"(",Style[uyIn, RGBColor[0.2, 0.5, 0.3]],")","*"," inv_rhoI "];
  Print["mxxI = " ,"(",Style[MxxIn, RGBColor[0.2, 0.5, 0.3]],")","*"," inv_rhoI "," - ","cs2"];
  Print["myyI = " ,"(",Style[MyyIn, RGBColor[0.2, 0.5, 0.3]],")","*"," inv_rhoI "," - ","cs2"];
  Print["mxyI = " ,"(",Style[MxyIn, RGBColor[0.2, 0.5, 0.3]],")","*"," inv_rhoI ", ";\n"];
	
  Print[Simplify[sol1[[1, 1]]], ";\n", sol2[[1, 1]], ";\n", 
    sol2[[1, 2]], ";\n", sol2[[1, 3]], ";\n", sol2[[1, 4]], ";\n", sol2[[1, 5]], ";\n\n"];
)
