(* ::Package:: *)

(* BoundaryData.wl - Minimalist with boundary tracking *)
Is = {}; Os = {}; (* Initialize lattice sets *)
bcName = "uninitialized"; (* Global boundary name *)

SetBoundary[name_] := Module[{},
  Which[
    name == "bottom", (Is = {0,1,4,5,7,8}; Os = {0,2,3,5,6,7}; bcName = name),
    name == "top", (Is = {0,2,3,5,6,7}; Os = {0,1,4,5,7,8}; bcName = name),
    name == "bottom_fluid", (Is = {0,1,2,3,4,5,7,8}; Os = {0,1,2,3,4,5,6,7}; bcName = name),
    name == "top_fluid", (Is = {0,1,2,3,4,5,6,7}; Os = {0,1,2,3,4,5,7,8}; bcName = name),
    name == "bottom_left", (Is = {0,4,7}; Os = {0,2,5}; bcName = name),
    name == "bottom_right", (Is = {0,1,4,5,8}; Os = {0,2,3,6,7}; bcName = name),
    name == "top_right", (Is = {0,2,5}; Os = {0,4,7}; bcName = name),
    name == "top_left", (Is = {0,2,3,6,7}; Os ={0,1,4,5,8} ; bcName = name),
    name == "bottom_left_fluid", (Is = {0,2,3,4,7}; Os = {0,1,2,4,5}; bcName = name),
    name == "top_right_fluid", (Is = {0,1,2,4,5}; Os = {0,2,3,4,7}; bcName = name),
    name == "top_left_fluid", (Is = {0,2,3,4,6,7}; Os = {0,1,2,4,5,8}; bcName = name),
    name == "bottom_right_fluid", (Is = {0,1,2,4,5,8}; Os = {0,2,3,4,6,7}; bcName = name),
    True, Print["Unknown boundary: ", name]
  ]
];

