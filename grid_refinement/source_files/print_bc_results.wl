(* ::Package:: *)

PrintBoundaryResults[] := (
  Print[Style["------------------------- ", Blue, 14], 
    Style[bcName, Blue, 14], 
    Style[" ------------------------- ", Blue, 14]];
    
  Print[Row[{
    Style["ux = "], Style[ux, RGBColor[0.2, 0.5, 0.3]], Style[";"], 
    Spacer[20], 
    Style["uy = "], Style[uy, RGBColor[0.2, 0.5, 0.3]]
  }], Style[";"], Spacer[20], 
  "Is = ", Style[Is, RGBColor[0.2, 0.5, 0.3]], Style[";"], Spacer[20],
  "Os = ", Style[Os, RGBColor[0.2, 0.5, 0.3]], Style[";"]];
  
  Print[Simplify[sol1[[1, 1]]], ";\t", sol2[[1, 1]], ";\t", 
    sol2[[1, 2]], ";\t", sol2[[1, 3]], ";\n\n"];
)
