(* ::Package:: *)

(* BoundaryData.wl - Minimalist with boundary tracking *)
Is = {}; Os = {}; (* Initialize lattice sets *)
bcName = "uninitialized"; (* Global boundary name *)

SetBoundary[name_] := Module[{},
  Which[
    name == "BULK", (Is = {0,1,2,4,5,8}; Os = {0,2,3,4,6,7}; bcName = name),
    name == "NORTH", (Is = {0,1,2,5}; Os = {0,3,4,7}; bcName = name),
    name == "SOUTH", (Is = {0,4,8}; Os = {0,2,3,6}; bcName = name),
    True, Print["Unknown boundary: ", name]
  ]
];

