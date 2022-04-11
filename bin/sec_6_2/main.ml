(* variant *)
type figure =
    Point
  | Circle of int
  | Rectangle of int * int
  | Square of int;;

let area_of_figure = function
    Point -> 0
  | Circle r -> r * r * 3
  | Rectangle (x, y) -> x * y
  | Square x -> x * x;;

let c = Circle 3;;
print_int (area_of_figure c);;
print_string "\n";;