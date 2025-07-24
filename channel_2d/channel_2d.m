(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 12.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[    118501,       3084]
NotebookOptionsPosition[    111917,       3002]
NotebookOutlinePosition[    112281,       3018]
CellTagsIndexPosition[    112238,       3015]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"notebookDir", "=", 
   RowBox[{"NotebookDirectory", "[", "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"SetDirectory", "[", "notebookDir", "]"}], ";"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"Get", "[", "\"\<source_files/NotationDefinitions.wl\>\"", "]"}], 
    ";"}], "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
  "Get", "[", "\"\<source_files/lattice_properties_d2q9.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Get", "[", "\"\<source_files/BoundaryDefinitions.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Get", "[", "\"\<source_files/print_bc_results.wl\>\"", "]"}], 
   ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", "Corners", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"--", 
     RowBox[{"--", 
      RowBox[{"--", 
       RowBox[{"--", 
        RowBox[{"--", 
         RowBox[{"--", 
          RowBox[{"--", 
           RowBox[{"--", 
            RowBox[{"--", 
             RowBox[{"--", 
              RowBox[{"--", 
               RowBox[{"--", 
                RowBox[{"-", "south_west"}]}]}]}]}]}]}]}]}]}]}]}]}], " ", 
    RowBox[{"(", "or", ")"}], " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"bottom_left", "--"}], "--"}], "--"}], "--"}], 
    RowBox[{"--", 
     RowBox[{"--", 
      RowBox[{"--", 
       RowBox[{"--", 
        RowBox[{"--", 
         RowBox[{"--", 
          RowBox[{"--", 
           RowBox[{"--", "-"}]}]}]}]}]}]}]}]}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"ux", ",", "uy"}], "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ux", "=", "0"}], ";", " ", 
   RowBox[{"uy", "=", "0"}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SetBoundary", "[", "\"\<south_west\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Get", "[", "\"\<source_files/equations_2d.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
  "Get", "[", "\"\<source_files/equations_incoming_calc.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"sol1", "=", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"eqrhoS", ",", "eqmxx", ",", "eqmyy", ",", "eqmxy"}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"\[Rho]", ",", "mxx", ",", "myy", ",", "mxy"}], "}"}]}], 
    "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"sol2", "=", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"eqmxx", ",", "eqmyy", ",", "eqmxy"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"mxx", ",", "myy", ",", "mxy"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"PrintBoundaryResults", "[", "]"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"--", 
     RowBox[{"--", 
      RowBox[{"--", 
       RowBox[{"--", 
        RowBox[{"--", 
         RowBox[{"--", 
          RowBox[{"--", 
           RowBox[{"--", 
            RowBox[{"--", 
             RowBox[{"--", 
              RowBox[{"--", 
               RowBox[{"--", 
                RowBox[{"-", "north_west"}]}]}]}]}]}]}]}]}]}]}]}]}], " ", 
    RowBox[{"(", "or", ")"}], " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"top_left", "--"}], "--"}], "--"}], "--"}], 
    RowBox[{"--", 
     RowBox[{"--", 
      RowBox[{"--", 
       RowBox[{"--", 
        RowBox[{"--", 
         RowBox[{"--", 
          RowBox[{"--", 
           RowBox[{"--", "-"}]}]}]}]}]}]}]}]}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"ux", ",", "uy"}], "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ux", "=", "0"}], ";", " ", 
   RowBox[{"uy", "=", "0"}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SetBoundary", "[", "\"\<north_west\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Get", "[", "\"\<source_files/equations_2d.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
  "Get", "[", "\"\<source_files/equations_incoming_calc.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"sol1", "=", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"eqrhoS", ",", "eqmxx", ",", "eqmyy", ",", "eqmxy"}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"\[Rho]", ",", "mxx", ",", "myy", ",", "mxy"}], "}"}]}], 
    "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"sol2", "=", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"eqmxx", ",", "eqmyy", ",", "eqmxy"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"mxx", ",", "myy", ",", "mxy"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"PrintBoundaryResults", "[", "]"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{"--", 
      RowBox[{"--", 
       RowBox[{"--", 
        RowBox[{"--", 
         RowBox[{"--", 
          RowBox[{"--", 
           RowBox[{"--", 
            RowBox[{"--", 
             RowBox[{"--", 
              RowBox[{"--", 
               RowBox[{"--", 
                RowBox[{"--", 
                 RowBox[{"-", "south_east"}]}]}]}]}]}]}]}]}]}]}]}]}], " ", 
     RowBox[{"(", "or", ")"}], " ", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{"bottom_right", "--"}], "--"}], "--"}], "--"}], 
             "--"}], "--"}], "--"}], "--"}], "--"}], "--"}], "--"}], "--"}]}],
     "-"}], "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"ux", ",", "uy"}], "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ux", "=", "0"}], ";", " ", 
   RowBox[{"uy", "=", "0"}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SetBoundary", "[", "\"\<south_east\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Get", "[", "\"\<source_files/equations_2d.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
  "Get", "[", "\"\<source_files/equations_incoming_calc.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"sol1", "=", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"eqrhoS", ",", "eqmxx", ",", "eqmyy", ",", "eqmxy"}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"\[Rho]", ",", "mxx", ",", "myy", ",", "mxy"}], "}"}]}], 
    "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"sol2", "=", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"eqmxx", ",", "eqmyy", ",", "eqmxy"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"mxx", ",", "myy", ",", "mxy"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"PrintBoundaryResults", "[", "]"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"--", 
     RowBox[{"--", 
      RowBox[{"--", 
       RowBox[{"--", 
        RowBox[{"--", 
         RowBox[{"--", 
          RowBox[{"--", 
           RowBox[{"--", 
            RowBox[{"--", 
             RowBox[{"--", 
              RowBox[{"--", 
               RowBox[{"--", 
                RowBox[{"-", "north_east"}]}]}]}]}]}]}]}]}]}]}]}]}], " ", 
    RowBox[{"(", "or", ")"}], " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"top_right", "--"}], "--"}], "--"}], "--"}], 
    RowBox[{"--", 
     RowBox[{"--", 
      RowBox[{"--", 
       RowBox[{"--", 
        RowBox[{"--", 
         RowBox[{"--", 
          RowBox[{"--", 
           RowBox[{"--", "-"}]}]}]}]}]}]}]}]}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"ux", ",", "uy"}], "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ux", "=", "0"}], ";", " ", 
   RowBox[{"uy", "=", "0"}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SetBoundary", "[", "\"\<north_east\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Get", "[", "\"\<source_files/equations_2d.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
  "Get", "[", "\"\<source_files/equations_incoming_calc.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"sol1", "=", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"eqrhoS", ",", "eqmxx", ",", "eqmyy", ",", "eqmxy"}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"\[Rho]", ",", "mxx", ",", "myy", ",", "mxy"}], "}"}]}], 
    "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"sol2", "=", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"eqmxx", ",", "eqmyy", ",", "eqmxy"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"mxx", ",", "myy", ",", "mxy"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"PrintBoundaryResults", "[", "]"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{"(*", "Edges", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"--", 
     RowBox[{"--", 
      RowBox[{"--", 
       RowBox[{"--", 
        RowBox[{"--", 
         RowBox[{"--", 
          RowBox[{"--", 
           RowBox[{"--", 
            RowBox[{"--", 
             RowBox[{"--", 
              RowBox[{"--", 
               RowBox[{"--", 
                RowBox[{"-", "WEST"}]}]}]}]}]}]}]}]}]}]}]}]}], " ", "or", " ",
     "LEFT", " ", 
    RowBox[{"(", "or", ")"}], " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"INLET", "--"}], "--"}], "--"}], "--"}], 
    RowBox[{"--", 
     RowBox[{"--", 
      RowBox[{"--", 
       RowBox[{"--", 
        RowBox[{"--", 
         RowBox[{"--", 
          RowBox[{"--", 
           RowBox[{"--", "-"}]}]}]}]}]}]}]}]}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"ux", ",", "uy"}], "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ux", "=", "uo"}], ";", " ", 
   RowBox[{"uy", "=", "0"}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SetBoundary", "[", "\"\<west\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Get", "[", "\"\<source_files/equations_2d.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
  "Get", "[", "\"\<source_files/equations_incoming_calc.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"sol1", "=", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"eqrhoS", ",", "eqmxx", ",", "eqmyy", ",", "eqmxy"}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"\[Rho]", ",", "mxx", ",", "myy", ",", "mxy"}], "}"}]}], 
    "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"sol2", "=", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"eqmxx", ",", "eqmyy", ",", "eqmxy"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"mxx", ",", "myy", ",", "mxy"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"PrintBoundaryResults", "[", "]"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"--", 
     RowBox[{"--", 
      RowBox[{"--", 
       RowBox[{"--", 
        RowBox[{"--", 
         RowBox[{"--", 
          RowBox[{"--", 
           RowBox[{"--", 
            RowBox[{"--", 
             RowBox[{"--", 
              RowBox[{"--", 
               RowBox[{"--", 
                RowBox[{"-", "EAST"}]}]}]}]}]}]}]}]}]}]}]}]}], " ", 
    RowBox[{"(", "or", ")"}], " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"OUTLET", "--"}], "--"}], "--"}], "--"}], 
    RowBox[{"--", 
     RowBox[{"--", 
      RowBox[{"--", 
       RowBox[{"--", 
        RowBox[{"--", 
         RowBox[{"--", 
          RowBox[{"--", 
           RowBox[{"--", "-"}]}]}]}]}]}]}]}]}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Clear", "[", 
    RowBox[{"ux", ",", "uy"}], "]"}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SetBoundary", "[", "\"\<east\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Get", "[", "\"\<source_files/equations_2d.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
  "Get", "[", "\"\<source_files/equations_incoming_calc.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"sol1", "=", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"eqrhoS", ",", "eqmxx", ",", "eqmyy", ",", "eqmxy"}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"\[Rho]", ",", "mxx", ",", "myy", ",", "mxy"}], "}"}]}], 
    "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"sol2", "=", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"eqmxx", ",", "eqmyy", ",", "eqmxy"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"mxx", ",", "myy", ",", "mxy"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"PrintBoundaryResults", "[", "]"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"--", 
     RowBox[{"--", 
      RowBox[{"--", 
       RowBox[{"--", 
        RowBox[{"--", 
         RowBox[{"--", 
          RowBox[{"--", 
           RowBox[{"--", 
            RowBox[{"--", 
             RowBox[{"--", 
              RowBox[{"--", 
               RowBox[{"--", 
                RowBox[{"-", "NORTH"}]}]}]}]}]}]}]}]}]}]}]}]}], " ", 
    RowBox[{"(", "or", ")"}], " ", "TOP", " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"WALL", "--"}], "--"}], "--"}], "--"}], 
    RowBox[{"--", 
     RowBox[{"--", 
      RowBox[{"--", 
       RowBox[{"--", 
        RowBox[{"--", 
         RowBox[{"--", 
          RowBox[{"--", 
           RowBox[{"--", "-"}]}]}]}]}]}]}]}]}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"ux", ",", "uy"}], "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ux", "=", "0"}], ";", " ", 
   RowBox[{"uy", "=", "0"}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SetBoundary", "[", "\"\<north\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Get", "[", "\"\<source_files/equations_2d.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
  "Get", "[", "\"\<source_files/equations_incoming_calc.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"sol1", "=", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"eqrhoS", ",", "eqmxx", ",", "eqmyy", ",", "eqmxy"}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"\[Rho]", ",", "mxx", ",", "myy", ",", "mxy"}], "}"}]}], 
    "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"sol2", "=", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"eqmxx", ",", "eqmyy", ",", "eqmxy"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"mxx", ",", "myy", ",", "mxy"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"PrintBoundaryResults", "[", "]"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"--", 
     RowBox[{"--", 
      RowBox[{"--", 
       RowBox[{"--", 
        RowBox[{"--", 
         RowBox[{"--", 
          RowBox[{"--", 
           RowBox[{"--", 
            RowBox[{"--", 
             RowBox[{"--", 
              RowBox[{"--", 
               RowBox[{"--", 
                RowBox[{"-", "SOUTH"}]}]}]}]}]}]}]}]}]}]}]}]}], " ", 
    RowBox[{"(", "or", ")"}], " ", "BOTTOM", " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"WALL", "--"}], "--"}], "--"}], "--"}], 
    RowBox[{"--", 
     RowBox[{"--", 
      RowBox[{"--", 
       RowBox[{"--", 
        RowBox[{"--", 
         RowBox[{"--", 
          RowBox[{"--", 
           RowBox[{"--", "-"}]}]}]}]}]}]}]}]}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"ux", ",", "uy"}], "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ux", "=", "0"}], ";", " ", 
  RowBox[{"uy", "=", "0"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SetBoundary", "[", "\"\<south\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Get", "[", "\"\<source_files/equations_2d.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
  "Get", "[", "\"\<source_files/equations_incoming_calc.wl\>\"", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"sol1", "=", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"eqrhoS", ",", "eqmxx", ",", "eqmyy", ",", "eqmxy"}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"\[Rho]", ",", "mxx", ",", "myy", ",", "mxy"}], "}"}]}], 
    "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"sol2", "=", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"eqmxx", ",", "eqmyy", ",", "eqmxy"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"mxx", ",", "myy", ",", "mxy"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"PrintBoundaryResults", "[", "]"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.961684759549836*^9, 3.961684849230995*^9}, {
   3.9616849848354273`*^9, 3.961684985206215*^9}, 3.961685028893174*^9, {
   3.961685129401661*^9, 3.961685176477973*^9}, {3.961685247943832*^9, 
   3.9616852978337717`*^9}, {3.961685337403615*^9, 3.961685426816079*^9}, 
   3.961685748394665*^9, {3.961685832398694*^9, 3.961685953083886*^9}, {
   3.961686005539604*^9, 3.9616860547369833`*^9}, {3.961686189361143*^9, 
   3.961686243723299*^9}, {3.961686519658485*^9, 3.961686630716988*^9}, {
   3.961686667811569*^9, 3.9616866733531437`*^9}, {3.961686703982011*^9, 
   3.961686754902137*^9}, {3.9616868149146338`*^9, 3.9616868210083647`*^9}, {
   3.961686938178904*^9, 3.9616870456869087`*^9}, {3.961687088417705*^9, 
   3.961687091596727*^9}, {3.961687149515511*^9, 3.961687155293661*^9}, {
   3.9616873776717443`*^9, 3.9616874366589108`*^9}, {3.961687492776123*^9, 
   3.961687525155611*^9}, {3.961687614894825*^9, 3.9616876152274446`*^9}, {
   3.961687655323235*^9, 3.9616879545807133`*^9}, {3.961687992489623*^9, 
   3.961687992856056*^9}, {3.961688044840769*^9, 3.9616881831433487`*^9}, {
   3.961688224305794*^9, 3.9616882579502897`*^9}, {3.961688291143114*^9, 
   3.9616883764909487`*^9}, {3.961688735427731*^9, 3.9616887423444023`*^9}, {
   3.961689857630618*^9, 3.9616899069254217`*^9}, {3.961690058233477*^9, 
   3.961690133364738*^9}, {3.961690172545713*^9, 3.961690189331606*^9}, {
   3.9616922190288982`*^9, 3.961692262057231*^9}, {3.961692304403925*^9, 
   3.961692308592545*^9}, {3.961692443718755*^9, 3.961692480106594*^9}, {
   3.961745629811908*^9, 3.961745642701744*^9}, {3.961745690079875*^9, 
   3.961745697966281*^9}, {3.961745761493615*^9, 3.961745776285636*^9}, {
   3.961746002044797*^9, 3.961746005963606*^9}, {3.961746091226863*^9, 
   3.961746106342732*^9}, {3.9617695777151527`*^9, 3.961769640995648*^9}, {
   3.9617696920261183`*^9, 3.9617697022848873`*^9}, {3.962365289520814*^9, 
   3.962365335621695*^9}},
 CellLabel->"In[1]:=",ExpressionUUID->"f8165cde-f27e-4cf6-8450-44755db2d1d2"],

Cell[CellGroupData[{

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   StyleBox["\<\"------------------------------------ \"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]], "\[InvisibleSpace]", 
   StyleBox["\<\"south_west\"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]], "\[InvisibleSpace]", 
   StyleBox["\<\" ------------------------------------ \"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]]}],
  SequenceForm[
   Style["------------------------------------ ", 
    RGBColor[0, 0, 1], 14], 
   Style["south_west", 
    RGBColor[0, 0, 1], 14], 
   Style[" ------------------------------------ ", 
    RGBColor[0, 0, 1], 14]],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341018056*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"25e1df53-9b83-4d27-8e75-97c463bf9290"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   TemplateBox[{StyleBox["\"ux = \"", StripOnInput -> False],StyleBox["0", 
      RGBColor[0.2, 0.5, 0.3], StripOnInput -> False],StyleBox[
     "\";\"", StripOnInput -> False],TemplateBox[{20}, "Spacer1"],StyleBox[
     "\"uy = \"", StripOnInput -> False],StyleBox["0", 
      RGBColor[0.2, 0.5, 0.3], StripOnInput -> False]},
    "RowDefault"], "\[InvisibleSpace]", "\<\";\"\>", "\[InvisibleSpace]", 
   TemplateBox[{20},
    "Spacer1"], "\[InvisibleSpace]", "\<\"Is = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"{", 
     RowBox[{"0", ",", "3", ",", "4", ",", "7"}], "}"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\";\"\>", 
   "\[InvisibleSpace]", 
   TemplateBox[{20},
    "Spacer1"], "\[InvisibleSpace]", "\<\"Os = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"{", 
     RowBox[{"0", ",", "1", ",", "2", ",", "5"}], "}"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\";\"\>", 
   "\[InvisibleSpace]", "\<\";\\n\"\>"}],
  SequenceForm[
   Row[{
     Style["ux = "], 
     Style[0, 
      RGBColor[0.2, 0.5, 0.3]], 
     Style[";"], 
     Spacer[20], 
     Style["uy = "], 
     Style[0, 
      RGBColor[0.2, 0.5, 0.3]]}], 
   Style[";"], 
   Spacer[20], "Is = ", 
   Style[{0, 3, 4, 7}, 
    RGBColor[0.2, 0.5, 0.3]], 
   Style[";"], 
   Spacer[20], "Os = ", 
   Style[{0, 1, 2, 5}, 
    RGBColor[0.2, 0.5, 0.3]], 
   Style[";"], ";\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341021406*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"7b98af02-6adf-43da-af08-ffdfd7c96055"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"rhoI = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "0", "]"}], "+", 
     RowBox[{"pop", "[", "3", "]"}], "+", 
     RowBox[{"pop", "[", "4", "]"}], "+", 
     RowBox[{"pop", "[", "7", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]]}],
  SequenceForm["rhoI = ", 
   Style[$CellContext`pop[0] + $CellContext`pop[3] + $CellContext`pop[
     4] + $CellContext`pop[7], 
    RGBColor[0.2, 0.5, 0.3]]],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341027788*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"c4b3a9b7-faf4-47d3-8d99-2108fad1836e"],

Cell[BoxData["\<\"inv_rhoI = 1.0/rhoI \"\>"], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341030012*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"c08673f4-d4c0-42c4-8f32-8b0cdf811f57"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"mxxI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "3", "]"}], "+", 
     RowBox[{"pop", "[", "7", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\" - \"\>", "\[InvisibleSpace]", "\<\"cs2\"\>"}],
  SequenceForm["mxxI = ", "(", 
   Style[$CellContext`pop[3] + $CellContext`pop[7], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", " - ", "cs2"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341031928*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"ddca3d9d-6e40-4165-bcac-51316d47b535"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"myyI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "4", "]"}], "+", 
     RowBox[{"pop", "[", "7", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\" - \"\>", "\[InvisibleSpace]", "\<\"cs2\"\>"}],
  SequenceForm["myyI = ", "(", 
   Style[$CellContext`pop[4] + $CellContext`pop[7], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", " - ", "cs2"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341034171*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"44a96c07-789e-44d6-b9b2-ca72f57a1219"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"mxyI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"pop", "[", "7", "]"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\";\\n\"\>"}],
  SequenceForm["mxyI = ", "(", 
   Style[
    $CellContext`pop[7], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", ";\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.9623653410360813`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"c2a08079-2448-4b91-b8e8-fc87993a11fe"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   RowBox[{"\[Rho]", "\[Rule]", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{"12", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "3"}], "-", 
         RowBox[{"3", " ", "myyI"}], "+", 
         RowBox[{"3", " ", "mxxI", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "omega"}], ")"}]}], "-", 
         RowBox[{"7", " ", "mxyI", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "omega"}], ")"}]}], "+", 
         RowBox[{"3", " ", "myyI", " ", "omega"}]}], ")"}], " ", "rhoI"}], 
      RowBox[{"16", "+", 
       RowBox[{"9", " ", "omega"}]}]]}]}], 
   "\[InvisibleSpace]", "\<\";\\t\"\>", "\[InvisibleSpace]", 
   RowBox[{"mxx", "\[Rule]", 
    FractionBox[
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"9", " ", "mxxI", " ", "rhoI"}], "-", 
        RowBox[{"6", " ", "mxyI", " ", "rhoI"}], "+", "\[Rho]"}], ")"}]}], 
     RowBox[{"9", " ", "\[Rho]"}]]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"myy", "\[Rule]", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"6", " ", "mxyI", " ", "rhoI"}], "-", 
         RowBox[{"9", " ", "myyI", " ", "rhoI"}], "-", "\[Rho]"}], ")"}]}], 
      RowBox[{"9", " ", "\[Rho]"}]]}]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"mxy", "\[Rule]", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{
       RowBox[{"18", " ", "mxxI", " ", "rhoI"}], "-", 
       RowBox[{"132", " ", "mxyI", " ", "rhoI"}], "+", 
       RowBox[{"18", " ", "myyI", " ", "rhoI"}], "+", 
       RowBox[{"7", " ", "\[Rho]"}]}], 
      RowBox[{"27", " ", "\[Rho]"}]]}]}], 
   "\[InvisibleSpace]", "\<\";\\n\\n\"\>"}],
  SequenceForm[$CellContext`\[Rho] -> (-12) (16 + 
      9 $CellContext`omega)^(-1) (-3 - 3 $CellContext`myyI + 
     3 $CellContext`mxxI (-1 + $CellContext`omega) - 
     7 $CellContext`mxyI (-1 + $CellContext`omega) + 
     3 $CellContext`myyI $CellContext`omega) $CellContext`rhoI, 
   ";\t", $CellContext`mxx -> 
   Rational[2, 9] $CellContext`\[Rho]^(-1) (
     9 $CellContext`mxxI $CellContext`rhoI - 
     6 $CellContext`mxyI $CellContext`rhoI + $CellContext`\[Rho]), 
   ";\t", $CellContext`myy -> 
   Rational[-2, 9] (6 $CellContext`mxyI $CellContext`rhoI - 
     9 $CellContext`myyI $CellContext`rhoI - \
$CellContext`\[Rho])/$CellContext`\[Rho], ";\t", $CellContext`mxy -> 
   Rational[-1, 27] $CellContext`\[Rho]^(-1) (
     18 $CellContext`mxxI $CellContext`rhoI - 
     132 $CellContext`mxyI $CellContext`rhoI + 
     18 $CellContext`myyI $CellContext`rhoI + 7 $CellContext`\[Rho]), ";\n\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341038672*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"aef919c2-f4ff-42c0-9088-1a5df9ede7fe"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   StyleBox["\<\"------------------------------------ \"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]], "\[InvisibleSpace]", 
   StyleBox["\<\"north_west\"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]], "\[InvisibleSpace]", 
   StyleBox["\<\" ------------------------------------ \"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]]}],
  SequenceForm[
   Style["------------------------------------ ", 
    RGBColor[0, 0, 1], 14], 
   Style["north_west", 
    RGBColor[0, 0, 1], 14], 
   Style[" ------------------------------------ ", 
    RGBColor[0, 0, 1], 14]],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.9623653410719347`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"7217c1ae-63d0-4b74-b788-a77252a15539"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   TemplateBox[{StyleBox["\"ux = \"", StripOnInput -> False],StyleBox["0", 
      RGBColor[0.2, 0.5, 0.3], StripOnInput -> False],StyleBox[
     "\";\"", StripOnInput -> False],TemplateBox[{20}, "Spacer1"],StyleBox[
     "\"uy = \"", StripOnInput -> False],StyleBox["0", 
      RGBColor[0.2, 0.5, 0.3], StripOnInput -> False]},
    "RowDefault"], "\[InvisibleSpace]", "\<\";\"\>", "\[InvisibleSpace]", 
   TemplateBox[{20},
    "Spacer1"], "\[InvisibleSpace]", "\<\"Is = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"{", 
     RowBox[{"0", ",", "2", ",", "3", ",", "6"}], "}"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\";\"\>", 
   "\[InvisibleSpace]", 
   TemplateBox[{20},
    "Spacer1"], "\[InvisibleSpace]", "\<\"Os = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"{", 
     RowBox[{"0", ",", "1", ",", "4", ",", "8"}], "}"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\";\"\>", 
   "\[InvisibleSpace]", "\<\";\\n\"\>"}],
  SequenceForm[
   Row[{
     Style["ux = "], 
     Style[0, 
      RGBColor[0.2, 0.5, 0.3]], 
     Style[";"], 
     Spacer[20], 
     Style["uy = "], 
     Style[0, 
      RGBColor[0.2, 0.5, 0.3]]}], 
   Style[";"], 
   Spacer[20], "Is = ", 
   Style[{0, 2, 3, 6}, 
    RGBColor[0.2, 0.5, 0.3]], 
   Style[";"], 
   Spacer[20], "Os = ", 
   Style[{0, 1, 4, 8}, 
    RGBColor[0.2, 0.5, 0.3]], 
   Style[";"], ";\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341073246*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"da830fa5-cef8-4cc7-b726-8a4c0e497ec4"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"rhoI = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "0", "]"}], "+", 
     RowBox[{"pop", "[", "2", "]"}], "+", 
     RowBox[{"pop", "[", "3", "]"}], "+", 
     RowBox[{"pop", "[", "6", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]]}],
  SequenceForm["rhoI = ", 
   Style[$CellContext`pop[0] + $CellContext`pop[2] + $CellContext`pop[
     3] + $CellContext`pop[6], 
    RGBColor[0.2, 0.5, 0.3]]],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341076062*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"f02c1591-f8d8-407a-a085-1cdd25cfe652"],

Cell[BoxData["\<\"inv_rhoI = 1.0/rhoI \"\>"], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.9623653410771227`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"8b10fc30-ac01-4929-9a6a-f3117a6053e2"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"mxxI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "3", "]"}], "+", 
     RowBox[{"pop", "[", "6", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\" - \"\>", "\[InvisibleSpace]", "\<\"cs2\"\>"}],
  SequenceForm["mxxI = ", "(", 
   Style[$CellContext`pop[3] + $CellContext`pop[6], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", " - ", "cs2"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.9623653410782957`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"749596cb-eb48-478a-bdc0-0d1693297bbc"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"myyI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "2", "]"}], "+", 
     RowBox[{"pop", "[", "6", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\" - \"\>", "\[InvisibleSpace]", "\<\"cs2\"\>"}],
  SequenceForm["myyI = ", "(", 
   Style[$CellContext`pop[2] + $CellContext`pop[6], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", " - ", "cs2"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.9623653410797367`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"42b6fa98-4fa2-4c5d-bf4e-c60fcb8ab5d2"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"mxyI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"-", 
     RowBox[{"pop", "[", "6", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\";\\n\"\>"}],
  SequenceForm["mxyI = ", "(", 
   Style[-$CellContext`pop[6], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", ";\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341081171*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"e6e000ce-a60f-4029-994b-bc2cd81698fc"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   RowBox[{"\[Rho]", "\[Rule]", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{"12", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "3"}], "-", 
         RowBox[{"3", " ", "myyI"}], "+", 
         RowBox[{"3", " ", "mxxI", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "omega"}], ")"}]}], "+", 
         RowBox[{"7", " ", "mxyI", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "omega"}], ")"}]}], "+", 
         RowBox[{"3", " ", "myyI", " ", "omega"}]}], ")"}], " ", "rhoI"}], 
      RowBox[{"16", "+", 
       RowBox[{"9", " ", "omega"}]}]]}]}], 
   "\[InvisibleSpace]", "\<\";\\t\"\>", "\[InvisibleSpace]", 
   RowBox[{"mxx", "\[Rule]", 
    FractionBox[
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"9", " ", "mxxI", " ", "rhoI"}], "+", 
        RowBox[{"6", " ", "mxyI", " ", "rhoI"}], "+", "\[Rho]"}], ")"}]}], 
     RowBox[{"9", " ", "\[Rho]"}]]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"myy", "\[Rule]", 
    FractionBox[
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"6", " ", "mxyI", " ", "rhoI"}], "+", 
        RowBox[{"9", " ", "myyI", " ", "rhoI"}], "+", "\[Rho]"}], ")"}]}], 
     RowBox[{"9", " ", "\[Rho]"}]]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"mxy", "\[Rule]", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{
       RowBox[{
        RowBox[{"-", "18"}], " ", "mxxI", " ", "rhoI"}], "-", 
       RowBox[{"132", " ", "mxyI", " ", "rhoI"}], "-", 
       RowBox[{"18", " ", "myyI", " ", "rhoI"}], "-", 
       RowBox[{"7", " ", "\[Rho]"}]}], 
      RowBox[{"27", " ", "\[Rho]"}]]}]}], 
   "\[InvisibleSpace]", "\<\";\\n\\n\"\>"}],
  SequenceForm[$CellContext`\[Rho] -> (-12) (16 + 
      9 $CellContext`omega)^(-1) (-3 - 3 $CellContext`myyI + 
     3 $CellContext`mxxI (-1 + $CellContext`omega) + 
     7 $CellContext`mxyI (-1 + $CellContext`omega) + 
     3 $CellContext`myyI $CellContext`omega) $CellContext`rhoI, 
   ";\t", $CellContext`mxx -> 
   Rational[2, 9] $CellContext`\[Rho]^(-1) (
     9 $CellContext`mxxI $CellContext`rhoI + 
     6 $CellContext`mxyI $CellContext`rhoI + $CellContext`\[Rho]), 
   ";\t", $CellContext`myy -> 
   Rational[2, 9] $CellContext`\[Rho]^(-1) (
     6 $CellContext`mxyI $CellContext`rhoI + 
     9 $CellContext`myyI $CellContext`rhoI + $CellContext`\[Rho]), 
   ";\t", $CellContext`mxy -> 
   Rational[-1, 27] ((-18) $CellContext`mxxI $CellContext`rhoI - 
     132 $CellContext`mxyI $CellContext`rhoI - 
     18 $CellContext`myyI $CellContext`rhoI - 
     7 $CellContext`\[Rho])/$CellContext`\[Rho], ";\n\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.96236534108298*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"f02deec2-e4a2-4f64-b6b9-aef2b319328c"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   StyleBox["\<\"------------------------------------ \"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]], "\[InvisibleSpace]", 
   StyleBox["\<\"south_east\"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]], "\[InvisibleSpace]", 
   StyleBox["\<\" ------------------------------------ \"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]]}],
  SequenceForm[
   Style["------------------------------------ ", 
    RGBColor[0, 0, 1], 14], 
   Style["south_east", 
    RGBColor[0, 0, 1], 14], 
   Style[" ------------------------------------ ", 
    RGBColor[0, 0, 1], 14]],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341084632*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"b9f02ec0-9d90-4eb4-a271-4823002860d9"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   TemplateBox[{StyleBox["\"ux = \"", StripOnInput -> False],StyleBox["0", 
      RGBColor[0.2, 0.5, 0.3], StripOnInput -> False],StyleBox[
     "\";\"", StripOnInput -> False],TemplateBox[{20}, "Spacer1"],StyleBox[
     "\"uy = \"", StripOnInput -> False],StyleBox["0", 
      RGBColor[0.2, 0.5, 0.3], StripOnInput -> False]},
    "RowDefault"], "\[InvisibleSpace]", "\<\";\"\>", "\[InvisibleSpace]", 
   TemplateBox[{20},
    "Spacer1"], "\[InvisibleSpace]", "\<\"Is = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"{", 
     RowBox[{"0", ",", "1", ",", "4", ",", "8"}], "}"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\";\"\>", 
   "\[InvisibleSpace]", 
   TemplateBox[{20},
    "Spacer1"], "\[InvisibleSpace]", "\<\"Os = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"{", 
     RowBox[{"0", ",", "2", ",", "3", ",", "6"}], "}"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\";\"\>", 
   "\[InvisibleSpace]", "\<\";\\n\"\>"}],
  SequenceForm[
   Row[{
     Style["ux = "], 
     Style[0, 
      RGBColor[0.2, 0.5, 0.3]], 
     Style[";"], 
     Spacer[20], 
     Style["uy = "], 
     Style[0, 
      RGBColor[0.2, 0.5, 0.3]]}], 
   Style[";"], 
   Spacer[20], "Is = ", 
   Style[{0, 1, 4, 8}, 
    RGBColor[0.2, 0.5, 0.3]], 
   Style[";"], 
   Spacer[20], "Os = ", 
   Style[{0, 2, 3, 6}, 
    RGBColor[0.2, 0.5, 0.3]], 
   Style[";"], ";\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341085946*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"7e4ebc6d-853a-4c5b-a5e5-b86e7a3d4b1d"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"rhoI = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "0", "]"}], "+", 
     RowBox[{"pop", "[", "1", "]"}], "+", 
     RowBox[{"pop", "[", "4", "]"}], "+", 
     RowBox[{"pop", "[", "8", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]]}],
  SequenceForm["rhoI = ", 
   Style[$CellContext`pop[0] + $CellContext`pop[1] + $CellContext`pop[
     4] + $CellContext`pop[8], 
    RGBColor[0.2, 0.5, 0.3]]],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341088892*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"3b0befc0-6c84-4151-ad02-c51efcd04cd2"],

Cell[BoxData["\<\"inv_rhoI = 1.0/rhoI \"\>"], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.9623653410900927`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"7f684e6c-24b4-48e8-bce7-170a4db2ef43"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"mxxI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "1", "]"}], "+", 
     RowBox[{"pop", "[", "8", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\" - \"\>", "\[InvisibleSpace]", "\<\"cs2\"\>"}],
  SequenceForm["mxxI = ", "(", 
   Style[$CellContext`pop[1] + $CellContext`pop[8], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", " - ", "cs2"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341091413*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"46495022-b401-4741-9faa-8bc5b4622bd6"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"myyI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "4", "]"}], "+", 
     RowBox[{"pop", "[", "8", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\" - \"\>", "\[InvisibleSpace]", "\<\"cs2\"\>"}],
  SequenceForm["myyI = ", "(", 
   Style[$CellContext`pop[4] + $CellContext`pop[8], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", " - ", "cs2"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341093067*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"255b549b-6142-4801-a3f0-5cd67a8fa6af"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"mxyI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"-", 
     RowBox[{"pop", "[", "8", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\";\\n\"\>"}],
  SequenceForm["mxyI = ", "(", 
   Style[-$CellContext`pop[8], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", ";\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.96236534109453*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"d6342811-e46f-43b9-b769-332439c4ba66"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   RowBox[{"\[Rho]", "\[Rule]", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{"12", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "3"}], "-", 
         RowBox[{"3", " ", "myyI"}], "+", 
         RowBox[{"3", " ", "mxxI", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "omega"}], ")"}]}], "+", 
         RowBox[{"7", " ", "mxyI", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "omega"}], ")"}]}], "+", 
         RowBox[{"3", " ", "myyI", " ", "omega"}]}], ")"}], " ", "rhoI"}], 
      RowBox[{"16", "+", 
       RowBox[{"9", " ", "omega"}]}]]}]}], 
   "\[InvisibleSpace]", "\<\";\\t\"\>", "\[InvisibleSpace]", 
   RowBox[{"mxx", "\[Rule]", 
    FractionBox[
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"9", " ", "mxxI", " ", "rhoI"}], "+", 
        RowBox[{"6", " ", "mxyI", " ", "rhoI"}], "+", "\[Rho]"}], ")"}]}], 
     RowBox[{"9", " ", "\[Rho]"}]]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"myy", "\[Rule]", 
    FractionBox[
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"6", " ", "mxyI", " ", "rhoI"}], "+", 
        RowBox[{"9", " ", "myyI", " ", "rhoI"}], "+", "\[Rho]"}], ")"}]}], 
     RowBox[{"9", " ", "\[Rho]"}]]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"mxy", "\[Rule]", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{
       RowBox[{
        RowBox[{"-", "18"}], " ", "mxxI", " ", "rhoI"}], "-", 
       RowBox[{"132", " ", "mxyI", " ", "rhoI"}], "-", 
       RowBox[{"18", " ", "myyI", " ", "rhoI"}], "-", 
       RowBox[{"7", " ", "\[Rho]"}]}], 
      RowBox[{"27", " ", "\[Rho]"}]]}]}], 
   "\[InvisibleSpace]", "\<\";\\n\\n\"\>"}],
  SequenceForm[$CellContext`\[Rho] -> (-12) (16 + 
      9 $CellContext`omega)^(-1) (-3 - 3 $CellContext`myyI + 
     3 $CellContext`mxxI (-1 + $CellContext`omega) + 
     7 $CellContext`mxyI (-1 + $CellContext`omega) + 
     3 $CellContext`myyI $CellContext`omega) $CellContext`rhoI, 
   ";\t", $CellContext`mxx -> 
   Rational[2, 9] $CellContext`\[Rho]^(-1) (
     9 $CellContext`mxxI $CellContext`rhoI + 
     6 $CellContext`mxyI $CellContext`rhoI + $CellContext`\[Rho]), 
   ";\t", $CellContext`myy -> 
   Rational[2, 9] $CellContext`\[Rho]^(-1) (
     6 $CellContext`mxyI $CellContext`rhoI + 
     9 $CellContext`myyI $CellContext`rhoI + $CellContext`\[Rho]), 
   ";\t", $CellContext`mxy -> 
   Rational[-1, 27] ((-18) $CellContext`mxxI $CellContext`rhoI - 
     132 $CellContext`mxyI $CellContext`rhoI - 
     18 $CellContext`myyI $CellContext`rhoI - 
     7 $CellContext`\[Rho])/$CellContext`\[Rho], ";\n\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341096265*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"8a732870-7f91-465c-a92b-9bac492547ae"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   StyleBox["\<\"------------------------------------ \"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]], "\[InvisibleSpace]", 
   StyleBox["\<\"north_east\"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]], "\[InvisibleSpace]", 
   StyleBox["\<\" ------------------------------------ \"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]]}],
  SequenceForm[
   Style["------------------------------------ ", 
    RGBColor[0, 0, 1], 14], 
   Style["north_east", 
    RGBColor[0, 0, 1], 14], 
   Style[" ------------------------------------ ", 
    RGBColor[0, 0, 1], 14]],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341098171*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"e43e948e-c668-4e3b-ade5-c60e07b825fb"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   TemplateBox[{StyleBox["\"ux = \"", StripOnInput -> False],StyleBox["0", 
      RGBColor[0.2, 0.5, 0.3], StripOnInput -> False],StyleBox[
     "\";\"", StripOnInput -> False],TemplateBox[{20}, "Spacer1"],StyleBox[
     "\"uy = \"", StripOnInput -> False],StyleBox["0", 
      RGBColor[0.2, 0.5, 0.3], StripOnInput -> False]},
    "RowDefault"], "\[InvisibleSpace]", "\<\";\"\>", "\[InvisibleSpace]", 
   TemplateBox[{20},
    "Spacer1"], "\[InvisibleSpace]", "\<\"Is = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"{", 
     RowBox[{"0", ",", "1", ",", "2", ",", "5"}], "}"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\";\"\>", 
   "\[InvisibleSpace]", 
   TemplateBox[{20},
    "Spacer1"], "\[InvisibleSpace]", "\<\"Os = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"{", 
     RowBox[{"0", ",", "3", ",", "4", ",", "7"}], "}"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\";\"\>", 
   "\[InvisibleSpace]", "\<\";\\n\"\>"}],
  SequenceForm[
   Row[{
     Style["ux = "], 
     Style[0, 
      RGBColor[0.2, 0.5, 0.3]], 
     Style[";"], 
     Spacer[20], 
     Style["uy = "], 
     Style[0, 
      RGBColor[0.2, 0.5, 0.3]]}], 
   Style[";"], 
   Spacer[20], "Is = ", 
   Style[{0, 1, 2, 5}, 
    RGBColor[0.2, 0.5, 0.3]], 
   Style[";"], 
   Spacer[20], "Os = ", 
   Style[{0, 3, 4, 7}, 
    RGBColor[0.2, 0.5, 0.3]], 
   Style[";"], ";\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.96236534109971*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"73c8d9dc-e37c-44a1-b34c-f8790abad827"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"rhoI = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "0", "]"}], "+", 
     RowBox[{"pop", "[", "1", "]"}], "+", 
     RowBox[{"pop", "[", "2", "]"}], "+", 
     RowBox[{"pop", "[", "5", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]]}],
  SequenceForm["rhoI = ", 
   Style[$CellContext`pop[0] + $CellContext`pop[1] + $CellContext`pop[
     2] + $CellContext`pop[5], 
    RGBColor[0.2, 0.5, 0.3]]],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341102805*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"fbaeac9a-c861-495f-93ed-b2ca44512b5b"],

Cell[BoxData["\<\"inv_rhoI = 1.0/rhoI \"\>"], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.9623653411040697`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"e797a364-afdb-4c4b-885d-78221c06e283"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"mxxI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "1", "]"}], "+", 
     RowBox[{"pop", "[", "5", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\" - \"\>", "\[InvisibleSpace]", "\<\"cs2\"\>"}],
  SequenceForm["mxxI = ", "(", 
   Style[$CellContext`pop[1] + $CellContext`pop[5], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", " - ", "cs2"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.9623653411054*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"ae0ff4e7-ace5-45e4-93b1-f15e5e848d39"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"myyI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "2", "]"}], "+", 
     RowBox[{"pop", "[", "5", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\" - \"\>", "\[InvisibleSpace]", "\<\"cs2\"\>"}],
  SequenceForm["myyI = ", "(", 
   Style[$CellContext`pop[2] + $CellContext`pop[5], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", " - ", "cs2"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341106832*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"10c08439-80a3-424c-b0e0-f85460da69f2"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"mxyI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"pop", "[", "5", "]"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\";\\n\"\>"}],
  SequenceForm["mxyI = ", "(", 
   Style[
    $CellContext`pop[5], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", ";\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341108241*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"6f907aaf-a46d-45ee-a654-760cec2c9c25"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   RowBox[{"\[Rho]", "\[Rule]", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{"12", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "3"}], "-", 
         RowBox[{"3", " ", "myyI"}], "+", 
         RowBox[{"3", " ", "mxxI", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "omega"}], ")"}]}], "-", 
         RowBox[{"7", " ", "mxyI", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "omega"}], ")"}]}], "+", 
         RowBox[{"3", " ", "myyI", " ", "omega"}]}], ")"}], " ", "rhoI"}], 
      RowBox[{"16", "+", 
       RowBox[{"9", " ", "omega"}]}]]}]}], 
   "\[InvisibleSpace]", "\<\";\\t\"\>", "\[InvisibleSpace]", 
   RowBox[{"mxx", "\[Rule]", 
    FractionBox[
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"9", " ", "mxxI", " ", "rhoI"}], "-", 
        RowBox[{"6", " ", "mxyI", " ", "rhoI"}], "+", "\[Rho]"}], ")"}]}], 
     RowBox[{"9", " ", "\[Rho]"}]]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"myy", "\[Rule]", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"6", " ", "mxyI", " ", "rhoI"}], "-", 
         RowBox[{"9", " ", "myyI", " ", "rhoI"}], "-", "\[Rho]"}], ")"}]}], 
      RowBox[{"9", " ", "\[Rho]"}]]}]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"mxy", "\[Rule]", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{
       RowBox[{"18", " ", "mxxI", " ", "rhoI"}], "-", 
       RowBox[{"132", " ", "mxyI", " ", "rhoI"}], "+", 
       RowBox[{"18", " ", "myyI", " ", "rhoI"}], "+", 
       RowBox[{"7", " ", "\[Rho]"}]}], 
      RowBox[{"27", " ", "\[Rho]"}]]}]}], 
   "\[InvisibleSpace]", "\<\";\\n\\n\"\>"}],
  SequenceForm[$CellContext`\[Rho] -> (-12) (16 + 
      9 $CellContext`omega)^(-1) (-3 - 3 $CellContext`myyI + 
     3 $CellContext`mxxI (-1 + $CellContext`omega) - 
     7 $CellContext`mxyI (-1 + $CellContext`omega) + 
     3 $CellContext`myyI $CellContext`omega) $CellContext`rhoI, 
   ";\t", $CellContext`mxx -> 
   Rational[2, 9] $CellContext`\[Rho]^(-1) (
     9 $CellContext`mxxI $CellContext`rhoI - 
     6 $CellContext`mxyI $CellContext`rhoI + $CellContext`\[Rho]), 
   ";\t", $CellContext`myy -> 
   Rational[-2, 9] (6 $CellContext`mxyI $CellContext`rhoI - 
     9 $CellContext`myyI $CellContext`rhoI - \
$CellContext`\[Rho])/$CellContext`\[Rho], ";\t", $CellContext`mxy -> 
   Rational[-1, 27] $CellContext`\[Rho]^(-1) (
     18 $CellContext`mxxI $CellContext`rhoI - 
     132 $CellContext`mxyI $CellContext`rhoI + 
     18 $CellContext`myyI $CellContext`rhoI + 7 $CellContext`\[Rho]), ";\n\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341110067*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"7253688a-e5f4-47da-8aaa-db8fb70a55a0"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   StyleBox["\<\"------------------------------------ \"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]], "\[InvisibleSpace]", 
   StyleBox["\<\"west\"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]], "\[InvisibleSpace]", 
   StyleBox["\<\" ------------------------------------ \"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]]}],
  SequenceForm[
   Style["------------------------------------ ", 
    RGBColor[0, 0, 1], 14], 
   Style["west", 
    RGBColor[0, 0, 1], 14], 
   Style[" ------------------------------------ ", 
    RGBColor[0, 0, 1], 14]],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.96236534111273*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"6cb8a9ec-86d7-441f-bcd0-5663d00511b3"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   TemplateBox[{StyleBox["\"ux = \"", StripOnInput -> False],StyleBox["uo", 
      RGBColor[0.2, 0.5, 0.3], StripOnInput -> False],StyleBox[
     "\";\"", StripOnInput -> False],TemplateBox[{20}, "Spacer1"],StyleBox[
     "\"uy = \"", StripOnInput -> False],StyleBox["0", 
      RGBColor[0.2, 0.5, 0.3], StripOnInput -> False]},
    "RowDefault"], "\[InvisibleSpace]", "\<\";\"\>", "\[InvisibleSpace]", 
   TemplateBox[{20},
    "Spacer1"], "\[InvisibleSpace]", "\<\"Is = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"{", 
     RowBox[{"0", ",", "2", ",", "3", ",", "4", ",", "6", ",", "7"}], "}"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\";\"\>", 
   "\[InvisibleSpace]", 
   TemplateBox[{20},
    "Spacer1"], "\[InvisibleSpace]", "\<\"Os = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"{", 
     RowBox[{"0", ",", "1", ",", "2", ",", "4", ",", "5", ",", "8"}], "}"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\";\"\>", 
   "\[InvisibleSpace]", "\<\";\\n\"\>"}],
  SequenceForm[
   Row[{
     Style["ux = "], 
     Style[$CellContext`uo, 
      RGBColor[0.2, 0.5, 0.3]], 
     Style[";"], 
     Spacer[20], 
     Style["uy = "], 
     Style[0, 
      RGBColor[0.2, 0.5, 0.3]]}], 
   Style[";"], 
   Spacer[20], "Is = ", 
   Style[{0, 2, 3, 4, 6, 7}, 
    RGBColor[0.2, 0.5, 0.3]], 
   Style[";"], 
   Spacer[20], "Os = ", 
   Style[{0, 1, 2, 4, 5, 8}, 
    RGBColor[0.2, 0.5, 0.3]], 
   Style[";"], ";\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341114768*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"36251c5b-1666-46c6-aa98-32c61f5a47d8"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"rhoI = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "0", "]"}], "+", 
     RowBox[{"pop", "[", "2", "]"}], "+", 
     RowBox[{"pop", "[", "3", "]"}], "+", 
     RowBox[{"pop", "[", "4", "]"}], "+", 
     RowBox[{"pop", "[", "6", "]"}], "+", 
     RowBox[{"pop", "[", "7", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]]}],
  SequenceForm["rhoI = ", 
   Style[$CellContext`pop[0] + $CellContext`pop[2] + $CellContext`pop[
     3] + $CellContext`pop[4] + $CellContext`pop[6] + $CellContext`pop[7], 
    RGBColor[0.2, 0.5, 0.3]]],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341117919*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"0a35b470-b8ab-4e3c-992b-18cc2353cc60"],

Cell[BoxData["\<\"inv_rhoI = 1.0/rhoI \"\>"], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.9623653411191683`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"25e3f749-de94-4dc3-b114-b6fc1540a125"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"mxxI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "3", "]"}], "+", 
     RowBox[{"pop", "[", "6", "]"}], "+", 
     RowBox[{"pop", "[", "7", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\" - \"\>", "\[InvisibleSpace]", "\<\"cs2\"\>"}],
  SequenceForm["mxxI = ", "(", 
   Style[$CellContext`pop[3] + $CellContext`pop[6] + $CellContext`pop[7], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", " - ", "cs2"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341120593*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"d9f5129d-8830-4f67-9091-78fc2e9f3fc3"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"myyI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "2", "]"}], "+", 
     RowBox[{"pop", "[", "4", "]"}], "+", 
     RowBox[{"pop", "[", "6", "]"}], "+", 
     RowBox[{"pop", "[", "7", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\" - \"\>", "\[InvisibleSpace]", "\<\"cs2\"\>"}],
  SequenceForm["myyI = ", "(", 
   Style[$CellContext`pop[2] + $CellContext`pop[4] + $CellContext`pop[
     6] + $CellContext`pop[7], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", " - ", "cs2"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.9623653411221733`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"65a22b98-5468-4dc5-a3a0-cca2356998b8"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"mxyI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"-", 
      RowBox[{"pop", "[", "6", "]"}]}], "+", 
     RowBox[{"pop", "[", "7", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\";\\n\"\>"}],
  SequenceForm["mxyI = ", "(", 
   Style[-$CellContext`pop[6] + $CellContext`pop[7], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", ";\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.9623653411236153`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"b849bfdc-d44f-48c1-8e9a-338524a06028"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   RowBox[{"\[Rho]", "\[Rule]", 
    FractionBox[
     RowBox[{"3", " ", 
      RowBox[{"(", 
       RowBox[{"4", "-", 
        RowBox[{"3", " ", "mxxI", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", "omega"}], ")"}]}]}], ")"}], " ", 
      "rhoI"}], 
     RowBox[{"9", "+", "omega", "+", 
      RowBox[{"3", " ", "uo"}], "+", 
      RowBox[{"3", " ", "omega", " ", "uo"}], "-", 
      RowBox[{"6", " ", "omega", " ", 
       SuperscriptBox["uo", "2"]}]}]]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"mxx", "\[Rule]", 
    FractionBox[
     RowBox[{
      RowBox[{"9", " ", "mxxI", " ", "rhoI"}], "+", "\[Rho]", "+", 
      RowBox[{"3", " ", "uo", " ", "\[Rho]"}]}], 
     RowBox[{"6", " ", "\[Rho]"}]]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"myy", "\[Rule]", 
    FractionBox[
     RowBox[{"6", " ", "myyI", " ", "rhoI"}], 
     RowBox[{"5", " ", "\[Rho]"}]]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"mxy", "\[Rule]", 
    FractionBox[
     RowBox[{"2", " ", "mxyI", " ", "rhoI"}], "\[Rho]"]}], 
   "\[InvisibleSpace]", "\<\";\\n\\n\"\>"}],
  SequenceForm[$CellContext`\[Rho] -> 
   3 (4 - 3 $CellContext`mxxI (-1 + $CellContext`omega)) $CellContext`rhoI/(
    9 + $CellContext`omega + 3 $CellContext`uo + 
    3 $CellContext`omega $CellContext`uo - 
    6 $CellContext`omega $CellContext`uo^2), ";\t", $CellContext`mxx -> 
   Rational[1, 6] $CellContext`\[Rho]^(-1) (
     9 $CellContext`mxxI $CellContext`rhoI + $CellContext`\[Rho] + 
     3 $CellContext`uo $CellContext`\[Rho]), ";\t", $CellContext`myy -> 
   Rational[6, 5] $CellContext`myyI $CellContext`rhoI/$CellContext`\[Rho], 
   ";\t", $CellContext`mxy -> 
   2 $CellContext`mxyI $CellContext`rhoI/$CellContext`\[Rho], ";\n\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341125362*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"678bcbab-a0c1-40be-92c6-1456084d6760"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   StyleBox["\<\"------------------------------------ \"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]], "\[InvisibleSpace]", 
   StyleBox["\<\"east\"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]], "\[InvisibleSpace]", 
   StyleBox["\<\" ------------------------------------ \"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]]}],
  SequenceForm[
   Style["------------------------------------ ", 
    RGBColor[0, 0, 1], 14], 
   Style["east", 
    RGBColor[0, 0, 1], 14], 
   Style[" ------------------------------------ ", 
    RGBColor[0, 0, 1], 14]],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341151496*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"e9dae4ef-0c4a-4695-8151-fb0c9f0d2791"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   TemplateBox[{StyleBox["\"ux = \"", StripOnInput -> False],StyleBox["ux", 
      RGBColor[0.2, 0.5, 0.3], StripOnInput -> False],StyleBox[
     "\";\"", StripOnInput -> False],TemplateBox[{20}, "Spacer1"],StyleBox[
     "\"uy = \"", StripOnInput -> False],StyleBox["uy", 
      RGBColor[0.2, 0.5, 0.3], StripOnInput -> False]},
    "RowDefault"], "\[InvisibleSpace]", "\<\";\"\>", "\[InvisibleSpace]", 
   TemplateBox[{20},
    "Spacer1"], "\[InvisibleSpace]", "\<\"Is = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"{", 
     RowBox[{"0", ",", "1", ",", "2", ",", "4", ",", "5", ",", "8"}], "}"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\";\"\>", 
   "\[InvisibleSpace]", 
   TemplateBox[{20},
    "Spacer1"], "\[InvisibleSpace]", "\<\"Os = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"{", 
     RowBox[{"0", ",", "1", ",", "3", ",", "4", ",", "7", ",", "8"}], "}"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\";\"\>", 
   "\[InvisibleSpace]", "\<\";\\n\"\>"}],
  SequenceForm[
   Row[{
     Style["ux = "], 
     Style[$CellContext`ux, 
      RGBColor[0.2, 0.5, 0.3]], 
     Style[";"], 
     Spacer[20], 
     Style["uy = "], 
     Style[$CellContext`uy, 
      RGBColor[0.2, 0.5, 0.3]]}], 
   Style[";"], 
   Spacer[20], "Is = ", 
   Style[{0, 1, 2, 4, 5, 8}, 
    RGBColor[0.2, 0.5, 0.3]], 
   Style[";"], 
   Spacer[20], "Os = ", 
   Style[{0, 1, 3, 4, 7, 8}, 
    RGBColor[0.2, 0.5, 0.3]], 
   Style[";"], ";\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341154571*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"6449490e-6358-49b6-8eec-4832d9f2ba16"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"rhoI = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "0", "]"}], "+", 
     RowBox[{"pop", "[", "1", "]"}], "+", 
     RowBox[{"pop", "[", "2", "]"}], "+", 
     RowBox[{"pop", "[", "4", "]"}], "+", 
     RowBox[{"pop", "[", "5", "]"}], "+", 
     RowBox[{"pop", "[", "8", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]]}],
  SequenceForm["rhoI = ", 
   Style[$CellContext`pop[0] + $CellContext`pop[1] + $CellContext`pop[
     2] + $CellContext`pop[4] + $CellContext`pop[5] + $CellContext`pop[8], 
    RGBColor[0.2, 0.5, 0.3]]],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341157843*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"e505ef56-8c57-4e6c-a629-9c1a661035f6"],

Cell[BoxData["\<\"inv_rhoI = 1.0/rhoI \"\>"], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341159173*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"132b5f8a-e1df-4fb5-9cfe-478a6b6a0464"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"mxxI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "1", "]"}], "+", 
     RowBox[{"pop", "[", "5", "]"}], "+", 
     RowBox[{"pop", "[", "8", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\" - \"\>", "\[InvisibleSpace]", "\<\"cs2\"\>"}],
  SequenceForm["mxxI = ", "(", 
   Style[$CellContext`pop[1] + $CellContext`pop[5] + $CellContext`pop[8], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", " - ", "cs2"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341160551*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"da124e9b-188b-440e-bb57-6e909a266dd0"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"myyI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "2", "]"}], "+", 
     RowBox[{"pop", "[", "4", "]"}], "+", 
     RowBox[{"pop", "[", "5", "]"}], "+", 
     RowBox[{"pop", "[", "8", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\" - \"\>", "\[InvisibleSpace]", "\<\"cs2\"\>"}],
  SequenceForm["myyI = ", "(", 
   Style[$CellContext`pop[2] + $CellContext`pop[4] + $CellContext`pop[
     5] + $CellContext`pop[8], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", " - ", "cs2"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341163044*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"5f52dba2-fe8c-49a7-9365-a68cb2d6369d"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"mxyI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "5", "]"}], "-", 
     RowBox[{"pop", "[", "8", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\";\\n\"\>"}],
  SequenceForm["mxyI = ", "(", 
   Style[$CellContext`pop[5] - $CellContext`pop[8], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", ";\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341165028*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"3b8b18c8-f68c-4f57-8b34-0183b342293a"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   RowBox[{"\[Rho]", "\[Rule]", 
    FractionBox[
     RowBox[{"6", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "5"}], "+", 
        RowBox[{"3", " ", "myyI", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", "omega"}], ")"}]}]}], ")"}], " ", 
      "rhoI"}], 
     RowBox[{"5", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "5"}], "+", 
        RowBox[{"3", " ", "uy"}], "+", 
        RowBox[{"3", " ", "omega", " ", 
         SuperscriptBox["uy", "2"]}]}], ")"}]}]]}], 
   "\[InvisibleSpace]", "\<\";\\t\"\>", "\[InvisibleSpace]", 
   RowBox[{"mxx", "\[Rule]", 
    FractionBox[
     RowBox[{
      RowBox[{"9", " ", "mxxI", " ", "rhoI"}], "+", "\[Rho]", "-", 
      RowBox[{"3", " ", "ux", " ", "\[Rho]"}]}], 
     RowBox[{"6", " ", "\[Rho]"}]]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"myy", "\[Rule]", 
    FractionBox[
     RowBox[{"6", " ", "myyI", " ", "rhoI"}], 
     RowBox[{"5", " ", "\[Rho]"}]]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"mxy", "\[Rule]", 
    FractionBox[
     RowBox[{
      RowBox[{"6", " ", "mxyI", " ", "rhoI"}], "-", 
      RowBox[{"uy", " ", "\[Rho]"}]}], 
     RowBox[{"3", " ", "\[Rho]"}]]}], "\[InvisibleSpace]", "\<\";\\n\\n\"\>"}],
  SequenceForm[$CellContext`\[Rho] -> 
   Rational[6, 5] (-5 + 
     3 $CellContext`myyI (-1 + $CellContext`omega)) $CellContext`rhoI/(-5 + 
    3 $CellContext`uy + 3 $CellContext`omega $CellContext`uy^2), 
   ";\t", $CellContext`mxx -> 
   Rational[1, 6] $CellContext`\[Rho]^(-1) (
     9 $CellContext`mxxI $CellContext`rhoI + $CellContext`\[Rho] - 
     3 $CellContext`ux $CellContext`\[Rho]), ";\t", $CellContext`myy -> 
   Rational[6, 5] $CellContext`myyI $CellContext`rhoI/$CellContext`\[Rho], 
   ";\t", $CellContext`mxy -> 
   Rational[1, 3] $CellContext`\[Rho]^(-1) (
     6 $CellContext`mxyI $CellContext`rhoI - $CellContext`uy $CellContext`\
\[Rho]), ";\n\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341166541*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"6c19cc38-efae-4438-ac07-e7edb210182f"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   StyleBox["\<\"------------------------------------ \"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]], "\[InvisibleSpace]", 
   StyleBox["\<\"north\"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]], "\[InvisibleSpace]", 
   StyleBox["\<\" ------------------------------------ \"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]]}],
  SequenceForm[
   Style["------------------------------------ ", 
    RGBColor[0, 0, 1], 14], 
   Style["north", 
    RGBColor[0, 0, 1], 14], 
   Style[" ------------------------------------ ", 
    RGBColor[0, 0, 1], 14]],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341167951*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"c9f6f05b-0150-46c4-92ec-0a0683590c69"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   TemplateBox[{StyleBox["\"ux = \"", StripOnInput -> False],StyleBox["0", 
      RGBColor[0.2, 0.5, 0.3], StripOnInput -> False],StyleBox[
     "\";\"", StripOnInput -> False],TemplateBox[{20}, "Spacer1"],StyleBox[
     "\"uy = \"", StripOnInput -> False],StyleBox["0", 
      RGBColor[0.2, 0.5, 0.3], StripOnInput -> False]},
    "RowDefault"], "\[InvisibleSpace]", "\<\";\"\>", "\[InvisibleSpace]", 
   TemplateBox[{20},
    "Spacer1"], "\[InvisibleSpace]", "\<\"Is = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"{", 
     RowBox[{"0", ",", "1", ",", "2", ",", "3", ",", "5", ",", "6"}], "}"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\";\"\>", 
   "\[InvisibleSpace]", 
   TemplateBox[{20},
    "Spacer1"], "\[InvisibleSpace]", "\<\"Os = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"{", 
     RowBox[{"0", ",", "1", ",", "3", ",", "4", ",", "7", ",", "8"}], "}"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\";\"\>", 
   "\[InvisibleSpace]", "\<\";\\n\"\>"}],
  SequenceForm[
   Row[{
     Style["ux = "], 
     Style[0, 
      RGBColor[0.2, 0.5, 0.3]], 
     Style[";"], 
     Spacer[20], 
     Style["uy = "], 
     Style[0, 
      RGBColor[0.2, 0.5, 0.3]]}], 
   Style[";"], 
   Spacer[20], "Is = ", 
   Style[{0, 1, 2, 3, 5, 6}, 
    RGBColor[0.2, 0.5, 0.3]], 
   Style[";"], 
   Spacer[20], "Os = ", 
   Style[{0, 1, 3, 4, 7, 8}, 
    RGBColor[0.2, 0.5, 0.3]], 
   Style[";"], ";\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341169237*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"c74857d9-0e72-4520-ae42-f8ff34d72f3c"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"rhoI = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "0", "]"}], "+", 
     RowBox[{"pop", "[", "1", "]"}], "+", 
     RowBox[{"pop", "[", "2", "]"}], "+", 
     RowBox[{"pop", "[", "3", "]"}], "+", 
     RowBox[{"pop", "[", "5", "]"}], "+", 
     RowBox[{"pop", "[", "6", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]]}],
  SequenceForm["rhoI = ", 
   Style[$CellContext`pop[0] + $CellContext`pop[1] + $CellContext`pop[
     2] + $CellContext`pop[3] + $CellContext`pop[5] + $CellContext`pop[6], 
    RGBColor[0.2, 0.5, 0.3]]],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.96236534117205*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"c57370e1-fd22-40c6-b724-36c14b1e8d13"],

Cell[BoxData["\<\"inv_rhoI = 1.0/rhoI \"\>"], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341173188*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"b95cbdc7-34bb-4be8-b07f-e5797b409511"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"mxxI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "1", "]"}], "+", 
     RowBox[{"pop", "[", "3", "]"}], "+", 
     RowBox[{"pop", "[", "5", "]"}], "+", 
     RowBox[{"pop", "[", "6", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\" - \"\>", "\[InvisibleSpace]", "\<\"cs2\"\>"}],
  SequenceForm["mxxI = ", "(", 
   Style[$CellContext`pop[1] + $CellContext`pop[3] + $CellContext`pop[
     5] + $CellContext`pop[6], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", " - ", "cs2"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.9623653411743793`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"fa3dd553-94ee-4079-b6c1-a9130428dd11"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"myyI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "2", "]"}], "+", 
     RowBox[{"pop", "[", "5", "]"}], "+", 
     RowBox[{"pop", "[", "6", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\" - \"\>", "\[InvisibleSpace]", "\<\"cs2\"\>"}],
  SequenceForm["myyI = ", "(", 
   Style[$CellContext`pop[2] + $CellContext`pop[5] + $CellContext`pop[6], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", " - ", "cs2"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341175623*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"c561a425-0e08-4f75-bc92-3859ec817f0c"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"mxyI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "5", "]"}], "-", 
     RowBox[{"pop", "[", "6", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\";\\n\"\>"}],
  SequenceForm["mxyI = ", "(", 
   Style[$CellContext`pop[5] - $CellContext`pop[6], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", ";\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.9623653411770277`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"d94a3243-5ee1-46f6-b4a0-3ff263f10519"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   RowBox[{"\[Rho]", "\[Rule]", 
    FractionBox[
     RowBox[{"3", " ", 
      RowBox[{"(", 
       RowBox[{"4", "-", 
        RowBox[{"3", " ", "myyI", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", "omega"}], ")"}]}]}], ")"}], " ", 
      "rhoI"}], 
     RowBox[{"9", "+", "omega"}]]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"mxx", "\[Rule]", 
    FractionBox[
     RowBox[{"6", " ", "mxxI", " ", "rhoI"}], 
     RowBox[{"5", " ", "\[Rho]"}]]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"myy", "\[Rule]", 
    FractionBox[
     RowBox[{
      RowBox[{"9", " ", "myyI", " ", "rhoI"}], "+", "\[Rho]"}], 
     RowBox[{"6", " ", "\[Rho]"}]]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"mxy", "\[Rule]", 
    FractionBox[
     RowBox[{"2", " ", "mxyI", " ", "rhoI"}], "\[Rho]"]}], 
   "\[InvisibleSpace]", "\<\";\\n\\n\"\>"}],
  SequenceForm[$CellContext`\[Rho] -> 
   3 (4 - 3 $CellContext`myyI (-1 + $CellContext`omega)) (
      9 + $CellContext`omega)^(-1) $CellContext`rhoI, ";\t", $CellContext`mxx -> 
   Rational[6, 5] $CellContext`mxxI $CellContext`rhoI/$CellContext`\[Rho], 
   ";\t", $CellContext`myy -> 
   Rational[1, 6] $CellContext`\[Rho]^(-1) (
     9 $CellContext`myyI $CellContext`rhoI + $CellContext`\[Rho]), 
   ";\t", $CellContext`mxy -> 
   2 $CellContext`mxyI $CellContext`rhoI/$CellContext`\[Rho], ";\n\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341178527*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"72de1eb6-b79b-48af-8af3-8c76ec18f86b"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   StyleBox["\<\"------------------------------------ \"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]], "\[InvisibleSpace]", 
   StyleBox["\<\"south\"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]], "\[InvisibleSpace]", 
   StyleBox["\<\" ------------------------------------ \"\>",
    StripOnInput->False,
    LineColor->RGBColor[0, 0, 1],
    FrontFaceColor->RGBColor[0, 0, 1],
    BackFaceColor->RGBColor[0, 0, 1],
    GraphicsColor->RGBColor[0, 0, 1],
    FontSize->14,
    FontColor->RGBColor[0, 0, 1]]}],
  SequenceForm[
   Style["------------------------------------ ", 
    RGBColor[0, 0, 1], 14], 
   Style["south", 
    RGBColor[0, 0, 1], 14], 
   Style[" ------------------------------------ ", 
    RGBColor[0, 0, 1], 14]],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341179912*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"a49aa222-9314-45c4-a831-b35c8a65dbc4"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   TemplateBox[{StyleBox["\"ux = \"", StripOnInput -> False],StyleBox["0", 
      RGBColor[0.2, 0.5, 0.3], StripOnInput -> False],StyleBox[
     "\";\"", StripOnInput -> False],TemplateBox[{20}, "Spacer1"],StyleBox[
     "\"uy = \"", StripOnInput -> False],StyleBox["0", 
      RGBColor[0.2, 0.5, 0.3], StripOnInput -> False]},
    "RowDefault"], "\[InvisibleSpace]", "\<\";\"\>", "\[InvisibleSpace]", 
   TemplateBox[{20},
    "Spacer1"], "\[InvisibleSpace]", "\<\"Is = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"{", 
     RowBox[{"0", ",", "1", ",", "3", ",", "4", ",", "7", ",", "8"}], "}"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\";\"\>", 
   "\[InvisibleSpace]", 
   TemplateBox[{20},
    "Spacer1"], "\[InvisibleSpace]", "\<\"Os = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{"{", 
     RowBox[{"0", ",", "1", ",", "2", ",", "3", ",", "5", ",", "6"}], "}"}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\";\"\>", 
   "\[InvisibleSpace]", "\<\";\\n\"\>"}],
  SequenceForm[
   Row[{
     Style["ux = "], 
     Style[0, 
      RGBColor[0.2, 0.5, 0.3]], 
     Style[";"], 
     Spacer[20], 
     Style["uy = "], 
     Style[0, 
      RGBColor[0.2, 0.5, 0.3]]}], 
   Style[";"], 
   Spacer[20], "Is = ", 
   Style[{0, 1, 3, 4, 7, 8}, 
    RGBColor[0.2, 0.5, 0.3]], 
   Style[";"], 
   Spacer[20], "Os = ", 
   Style[{0, 1, 2, 3, 5, 6}, 
    RGBColor[0.2, 0.5, 0.3]], 
   Style[";"], ";\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.96236534118117*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"15c5c670-8916-447b-a812-a666bdd71b76"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"rhoI = \"\>", "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "0", "]"}], "+", 
     RowBox[{"pop", "[", "1", "]"}], "+", 
     RowBox[{"pop", "[", "3", "]"}], "+", 
     RowBox[{"pop", "[", "4", "]"}], "+", 
     RowBox[{"pop", "[", "7", "]"}], "+", 
     RowBox[{"pop", "[", "8", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]]}],
  SequenceForm["rhoI = ", 
   Style[$CellContext`pop[0] + $CellContext`pop[1] + $CellContext`pop[
     3] + $CellContext`pop[4] + $CellContext`pop[7] + $CellContext`pop[8], 
    RGBColor[0.2, 0.5, 0.3]]],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341184082*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"17b6282a-ac05-4c12-a568-a666e8837a5e"],

Cell[BoxData["\<\"inv_rhoI = 1.0/rhoI \"\>"], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341185319*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"96feaa44-c468-48b4-9499-f98754b1f3d0"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"mxxI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "1", "]"}], "+", 
     RowBox[{"pop", "[", "3", "]"}], "+", 
     RowBox[{"pop", "[", "7", "]"}], "+", 
     RowBox[{"pop", "[", "8", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\" - \"\>", "\[InvisibleSpace]", "\<\"cs2\"\>"}],
  SequenceForm["mxxI = ", "(", 
   Style[$CellContext`pop[1] + $CellContext`pop[3] + $CellContext`pop[
     7] + $CellContext`pop[8], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", " - ", "cs2"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.96236534118652*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"419941c9-dde3-48c5-9048-55f3163e62d6"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"myyI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "4", "]"}], "+", 
     RowBox[{"pop", "[", "7", "]"}], "+", 
     RowBox[{"pop", "[", "8", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\" - \"\>", "\[InvisibleSpace]", "\<\"cs2\"\>"}],
  SequenceForm["myyI = ", "(", 
   Style[$CellContext`pop[4] + $CellContext`pop[7] + $CellContext`pop[8], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", " - ", "cs2"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341187887*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"dee873ef-8f0b-4002-b3b9-a544a6aeb5b0"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"mxyI = \"\>", "\[InvisibleSpace]", "\<\"(\"\>", 
   "\[InvisibleSpace]", 
   StyleBox[
    RowBox[{
     RowBox[{"pop", "[", "7", "]"}], "-", 
     RowBox[{"pop", "[", "8", "]"}]}],
    StripOnInput->False,
    LineColor->RGBColor[0.2, 0.5, 0.3],
    FrontFaceColor->RGBColor[0.2, 0.5, 0.3],
    BackFaceColor->RGBColor[0.2, 0.5, 0.3],
    GraphicsColor->RGBColor[0.2, 0.5, 0.3],
    FontColor->RGBColor[0.2, 0.5, 0.3]], "\[InvisibleSpace]", "\<\")\"\>", 
   "\[InvisibleSpace]", "\<\"*\"\>", 
   "\[InvisibleSpace]", "\<\" inv_rhoI \"\>", 
   "\[InvisibleSpace]", "\<\";\\n\"\>"}],
  SequenceForm["mxyI = ", "(", 
   Style[$CellContext`pop[7] - $CellContext`pop[8], 
    RGBColor[0.2, 0.5, 0.3]], ")", "*", " inv_rhoI ", ";\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341189296*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"9e4921b0-a72f-415a-bd5f-0073f588e106"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   RowBox[{"\[Rho]", "\[Rule]", 
    FractionBox[
     RowBox[{"3", " ", 
      RowBox[{"(", 
       RowBox[{"4", "-", 
        RowBox[{"3", " ", "myyI", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", "omega"}], ")"}]}]}], ")"}], " ", 
      "rhoI"}], 
     RowBox[{"9", "+", "omega"}]]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"mxx", "\[Rule]", 
    FractionBox[
     RowBox[{"6", " ", "mxxI", " ", "rhoI"}], 
     RowBox[{"5", " ", "\[Rho]"}]]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"myy", "\[Rule]", 
    FractionBox[
     RowBox[{
      RowBox[{"9", " ", "myyI", " ", "rhoI"}], "+", "\[Rho]"}], 
     RowBox[{"6", " ", "\[Rho]"}]]}], "\[InvisibleSpace]", "\<\";\\t\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"mxy", "\[Rule]", 
    FractionBox[
     RowBox[{"2", " ", "mxyI", " ", "rhoI"}], "\[Rho]"]}], 
   "\[InvisibleSpace]", "\<\";\\n\\n\"\>"}],
  SequenceForm[$CellContext`\[Rho] -> 
   3 (4 - 3 $CellContext`myyI (-1 + $CellContext`omega)) (
      9 + $CellContext`omega)^(-1) $CellContext`rhoI, ";\t", $CellContext`mxx -> 
   Rational[6, 5] $CellContext`mxxI $CellContext`rhoI/$CellContext`\[Rho], 
   ";\t", $CellContext`myy -> 
   Rational[1, 6] $CellContext`\[Rho]^(-1) (
     9 $CellContext`myyI $CellContext`rhoI + $CellContext`\[Rho]), 
   ";\t", $CellContext`mxy -> 
   2 $CellContext`mxyI $CellContext`rhoI/$CellContext`\[Rho], ";\n\n"],
  Editable->False]], "Print",
 CellChangeTimes->{{3.961745700096108*^9, 3.961745763302733*^9}, 
   3.961745982841002*^9, 3.961746107100518*^9, 3.961769510035994*^9, 
   3.96176970559886*^9, {3.961769736313575*^9, 3.961769786353751*^9}, 
   3.962365341190688*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"9bc3b82b-5e4e-410f-af06-88e52fcfa1ca"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1854, 1003},
WindowMargins->{{Automatic, 0}, {0, Automatic}},
Magnification:>1.3 Inherited,
FrontEndVersion->"12.0 for Linux x86 (64-bit) (April 8, 2019)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[580, 22, 19338, 602, 3179, "Input",ExpressionUUID->"f8165cde-f27e-4cf6-8450-44755db2d1d2"],
Cell[CellGroupData[{
Cell[19943, 628, 1525, 41, 32, "Print",ExpressionUUID->"25e1df53-9b83-4d27-8e75-97c463bf9290"],
Cell[21471, 671, 2217, 59, 61, "Print",ExpressionUUID->"7b98af02-6adf-43da-af08-ffdfd7c96055"],
Cell[23691, 732, 1047, 26, 32, "Print",ExpressionUUID->"c4b3a9b7-faf4-47d3-8d99-2108fad1836e"],
Cell[24741, 760, 391, 7, 32, "Print",ExpressionUUID->"c08673f4-d4c0-42c4-8f32-8b0cdf811f57"],
Cell[25135, 769, 1187, 27, 32, "Print",ExpressionUUID->"ddca3d9d-6e40-4165-bcac-51316d47b535"],
Cell[26325, 798, 1187, 27, 32, "Print",ExpressionUUID->"44a96c07-789e-44d6-b9b2-ca72f57a1219"],
Cell[27515, 827, 1071, 26, 61, "Print",ExpressionUUID->"c2a08079-2448-4b91-b8e8-fc87993a11fe"],
Cell[28589, 855, 3113, 76, 168, "Print",ExpressionUUID->"aef919c2-f4ff-42c0-9088-1a5df9ede7fe"],
Cell[31705, 933, 1527, 41, 32, "Print",ExpressionUUID->"7217c1ae-63d0-4b74-b788-a77252a15539"],
Cell[33235, 976, 2217, 59, 61, "Print",ExpressionUUID->"da830fa5-cef8-4cc7-b726-8a4c0e497ec4"],
Cell[35455, 1037, 1047, 26, 32, "Print",ExpressionUUID->"f02c1591-f8d8-407a-a085-1cdd25cfe652"],
Cell[36505, 1065, 393, 7, 32, "Print",ExpressionUUID->"8b10fc30-ac01-4929-9a6a-f3117a6053e2"],
Cell[36901, 1074, 1189, 27, 32, "Print",ExpressionUUID->"749596cb-eb48-478a-bdc0-0d1693297bbc"],
Cell[38093, 1103, 1189, 27, 32, "Print",ExpressionUUID->"42b6fa98-4fa2-4c5d-bf4e-c60fcb8ab5d2"],
Cell[39285, 1132, 1086, 26, 61, "Print",ExpressionUUID->"e6e000ce-a60f-4029-994b-bc2cd81698fc"],
Cell[40374, 1160, 3119, 77, 168, "Print",ExpressionUUID->"f02deec2-e4a2-4f64-b6b9-aef2b319328c"],
Cell[43496, 1239, 1525, 41, 32, "Print",ExpressionUUID->"b9f02ec0-9d90-4eb4-a271-4823002860d9"],
Cell[45024, 1282, 2217, 59, 61, "Print",ExpressionUUID->"7e4ebc6d-853a-4c5b-a5e5-b86e7a3d4b1d"],
Cell[47244, 1343, 1047, 26, 32, "Print",ExpressionUUID->"3b0befc0-6c84-4151-ad02-c51efcd04cd2"],
Cell[48294, 1371, 393, 7, 32, "Print",ExpressionUUID->"7f684e6c-24b4-48e8-bce7-170a4db2ef43"],
Cell[48690, 1380, 1187, 27, 32, "Print",ExpressionUUID->"46495022-b401-4741-9faa-8bc5b4622bd6"],
Cell[49880, 1409, 1187, 27, 32, "Print",ExpressionUUID->"255b549b-6142-4801-a3f0-5cd67a8fa6af"],
Cell[51070, 1438, 1085, 26, 61, "Print",ExpressionUUID->"d6342811-e46f-43b9-b769-332439c4ba66"],
Cell[52158, 1466, 3120, 77, 168, "Print",ExpressionUUID->"8a732870-7f91-465c-a92b-9bac492547ae"],
Cell[55281, 1545, 1525, 41, 32, "Print",ExpressionUUID->"e43e948e-c668-4e3b-ade5-c60e07b825fb"],
Cell[56809, 1588, 2216, 59, 61, "Print",ExpressionUUID->"73c8d9dc-e37c-44a1-b34c-f8790abad827"],
Cell[59028, 1649, 1047, 26, 32, "Print",ExpressionUUID->"fbaeac9a-c861-495f-93ed-b2ca44512b5b"],
Cell[60078, 1677, 393, 7, 32, "Print",ExpressionUUID->"e797a364-afdb-4c4b-885d-78221c06e283"],
Cell[60474, 1686, 1185, 27, 32, "Print",ExpressionUUID->"ae0ff4e7-ace5-45e4-93b1-f15e5e848d39"],
Cell[61662, 1715, 1187, 27, 32, "Print",ExpressionUUID->"10c08439-80a3-424c-b0e0-f85460da69f2"],
Cell[62852, 1744, 1069, 26, 61, "Print",ExpressionUUID->"6f907aaf-a46d-45ee-a654-760cec2c9c25"],
Cell[63924, 1772, 3113, 76, 168, "Print",ExpressionUUID->"7253688a-e5f4-47da-8aaa-db8fb70a55a0"],
Cell[67040, 1850, 1512, 41, 32, "Print",ExpressionUUID->"6cb8a9ec-86d7-441f-bcd0-5663d00511b3"],
Cell[68555, 1893, 2284, 59, 61, "Print",ExpressionUUID->"36251c5b-1666-46c6-aa98-32c61f5a47d8"],
Cell[70842, 1954, 1177, 28, 32, "Print",ExpressionUUID->"0a35b470-b8ab-4e3c-992b-18cc2353cc60"],
Cell[72022, 1984, 393, 7, 32, "Print",ExpressionUUID->"25e3f749-de94-4dc3-b114-b6fc1540a125"],
Cell[72418, 1993, 1252, 28, 32, "Print",ExpressionUUID->"d9f5129d-8830-4f67-9091-78fc2e9f3fc3"],
Cell[73673, 2023, 1325, 30, 32, "Print",ExpressionUUID->"65a22b98-5468-4dc5-a3a0-cca2356998b8"],
Cell[75001, 2055, 1170, 28, 61, "Print",ExpressionUUID->"b849bfdc-d44f-48c1-8e9a-338524a06028"],
Cell[76174, 2085, 2247, 53, 118, "Print",ExpressionUUID->"678bcbab-a0c1-40be-92c6-1456084d6760"],
Cell[78424, 2140, 1513, 41, 32, "Print",ExpressionUUID->"e9dae4ef-0c4a-4695-8151-fb0c9f0d2791"],
Cell[79940, 2183, 2299, 59, 61, "Print",ExpressionUUID->"6449490e-6358-49b6-8eec-4832d9f2ba16"],
Cell[82242, 2244, 1177, 28, 32, "Print",ExpressionUUID->"e505ef56-8c57-4e6c-a629-9c1a661035f6"],
Cell[83422, 2274, 391, 7, 32, "Print",ExpressionUUID->"132b5f8a-e1df-4fb5-9cfe-478a6b6a0464"],
Cell[83816, 2283, 1252, 28, 32, "Print",ExpressionUUID->"da124e9b-188b-440e-bb57-6e909a266dd0"],
Cell[85071, 2313, 1323, 30, 32, "Print",ExpressionUUID->"5f52dba2-fe8c-49a7-9365-a68cb2d6369d"],
Cell[86397, 2345, 1145, 27, 61, "Print",ExpressionUUID->"3b8b18c8-f68c-4f57-8b34-0183b342293a"],
Cell[87545, 2374, 2395, 60, 121, "Print",ExpressionUUID->"6c19cc38-efae-4438-ac07-e7edb210182f"],
Cell[89943, 2436, 1515, 41, 32, "Print",ExpressionUUID->"c9f6f05b-0150-46c4-92ec-0a0683590c69"],
Cell[91461, 2479, 2269, 59, 61, "Print",ExpressionUUID->"c74857d9-0e72-4520-ae42-f8ff34d72f3c"],
Cell[93733, 2540, 1176, 28, 32, "Print",ExpressionUUID->"c57370e1-fd22-40c6-b724-36c14b1e8d13"],
Cell[94912, 2570, 391, 7, 32, "Print",ExpressionUUID->"b95cbdc7-34bb-4be8-b07f-e5797b409511"],
Cell[95306, 2579, 1325, 30, 32, "Print",ExpressionUUID->"fa3dd553-94ee-4079-b6c1-a9130428dd11"],
Cell[96634, 2611, 1252, 28, 32, "Print",ExpressionUUID->"c561a425-0e08-4f75-bc92-3859ec817f0c"],
Cell[97889, 2641, 1147, 27, 61, "Print",ExpressionUUID->"d94a3243-5ee1-46f6-b4a0-3ff263f10519"],
Cell[99039, 2670, 1878, 46, 116, "Print",ExpressionUUID->"72de1eb6-b79b-48af-8af3-8c76ec18f86b"],
Cell[100920, 2718, 1515, 41, 32, "Print",ExpressionUUID->"a49aa222-9314-45c4-a831-b35c8a65dbc4"],
Cell[102438, 2761, 2268, 59, 61, "Print",ExpressionUUID->"15c5c670-8916-447b-a812-a666bdd71b76"],
Cell[104709, 2822, 1177, 28, 32, "Print",ExpressionUUID->"17b6282a-ac05-4c12-a568-a666e8837a5e"],
Cell[105889, 2852, 391, 7, 32, "Print",ExpressionUUID->"96feaa44-c468-48b4-9499-f98754b1f3d0"],
Cell[106283, 2861, 1322, 30, 32, "Print",ExpressionUUID->"419941c9-dde3-48c5-9048-55f3163e62d6"],
Cell[107608, 2893, 1252, 28, 32, "Print",ExpressionUUID->"dee873ef-8f0b-4002-b3b9-a544a6aeb5b0"],
Cell[108863, 2923, 1145, 27, 61, "Print",ExpressionUUID->"9e4921b0-a72f-415a-bd5f-0073f588e106"],
Cell[110011, 2952, 1878, 46, 116, "Print",ExpressionUUID->"9bc3b82b-5e4e-410f-af06-88e52fcfa1ca"]
}, Open  ]]
}, Open  ]]
}
]
*)

