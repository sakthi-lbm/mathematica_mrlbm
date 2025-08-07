(* ::Package:: *)

(* BoundaryDefinitions.wl - Minimalist with boundary tracking *)
Is = {}; Os = {}; (* Initialize lattice sets *)
bcName = "uninitialized"; (* Global boundary name *)

SetBoundary[name_] := Module[{},
  Which[
name == "BOTTOM",                 (Is = {0, 1, 4, 5, 7, 8};       Os = {0, 2, 3, 5, 6, 7};       bcName = name),
name == "FLUID_BC_BOTTOM",        (Is = {0, 1, 2, 3, 4, 5, 7, 8}; Os = {0, 1, 2, 3, 4, 5, 6, 7}; bcName = name),
name == "FLUID_BC_TOP",           (Is = {0, 1, 2, 3, 4, 5, 6, 7}; Os = {0, 1, 2, 3, 4, 5, 7, 8}; bcName = name),
name == "TOP",                    (Is = {0, 2, 3, 5, 6, 7};       Os = {0, 1, 4, 5, 7, 8};       bcName = name),

True, Print["Unknown boundary: ", name]
  ]
];

