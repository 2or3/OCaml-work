(* b-tree *)
type 'a tree = Lf | Br of 'a * 'a tree * 'a tree;;
let chartree = Br ('a', Br ('b', Br ('d', Lf, Lf), Lf), Br ('c', Br ('e', Lf, Lf), Br('f', Lf, Lf)));;

let rec size = function
    Lf -> 0
  | Br (_, left, right) -> 1 + size left + size right;;

print_int (size chartree);;
print_string "\n";;

let rec depth = function
    Lf -> 0
  | Br (_, left, right) -> 1 + max (depth left) (depth right);;

print_int (depth chartree);;
print_string "\n";;
