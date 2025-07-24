(* ::Package:: *)

(* BoundaryData.wl - Minimalist with boundary tracking *)
Is = {}; Os = {}; (* Initialize lattice sets *)
bcName = "uninitialized"; (* Global boundary name *)

SetBoundary[name_] := Module[{},
  Which[
    name == "north_west", (Is = {0,2,3,6}; Os = {0,1,4,8}; bcName = name),
    name == "north_east", (Is = {0,1,2,5}; Os = {0,3,4,7}; bcName = name),
    name == "south_west", (Is = {0,3,4,7}; Os = {0,1,2,5}; bcName = name),
    name == "south_east", (Is = {0,1,4,8}; Os = {0,2,3,6}; bcName = name),
    name == "west", (Is = {0,2,3,4,6,7}; Os = {0,1,2,4,5,8}; bcName = name),
    name == "east", (Is = {0,1,2,4,5,8}; Os = {0,1,3,4,7,8}; bcName = name),
    name == "north", (Is = {0,1,2,3,5,6}; Os = {0,1,3,4,7,8}; bcName = name),
    name == "south", (Is = {0,1,3,4,7,8}; Os = {0,1,2,3,5,6}; bcName = name),
    True, Print["Unknown boundary: ", name]
  ]
];

