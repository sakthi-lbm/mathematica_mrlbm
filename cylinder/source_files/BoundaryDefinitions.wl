(* ::Package:: *)

(* BoundaryDefinitions.wl - Minimalist with boundary tracking *)
Is = {}; Os = {}; (* Initialize lattice sets *)
bcName = "uninitialized"; (* Global boundary name *)

SetBoundary[name_] := Module[{},
  Which[
name == "BCFLUID1",                 (Is = {0, 1, 2, 3, 4, 5, 7, 8};       Os = {0, 1, 2, 3, 4, 5, 6, 7};       bcName = name),
name == "BCFLUID2",                 (Is = {0, 1, 2, 3, 4, 6, 7, 8};       Os = {0, 1, 2, 3, 4, 5, 6, 8};       bcName = name),
name == "BCFLUID3",                 (Is = {0, 1, 2, 3, 4, 5, 6, 8};       Os = {0, 1, 2, 3, 4, 6, 7, 8};       bcName = name),
name == "BCFLUID4",                 (Is = {0, 1, 2, 3, 4, 5, 6, 7};       Os = {0, 1, 2, 3, 4, 5, 7, 8};       bcName = name),


True, Print["Unknown boundary: ", name]
  ]
];

