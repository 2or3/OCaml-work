(* high-order function *)
let rec sum_of (f, n) =
  if n = 0 then 0 else sum_of (f, n - 1) + f n;;

let sum_of_square n =
  let square x = x * x in
  sum_of (square, n);;
let sum_of_cube n =
  let cube x = x * x * x in
  sum_of (cube, n);;

print_int (sum_of_square 5);;
print_string "\n";;
print_int (sum_of_cube 5);;
print_string "\n";;

(* anonymous function *)
let sum_of_cube n = sum_of ((fun x -> x * x * x), n);;
let sq5 = ((fun x -> x * x), 5) in
  print_int (sum_of sq5);;

print_string "\n";;
print_int (sum_of_cube 5);;
print_string "\n";;

print_int ((fun x -> x * x) 7);;
print_string "\n";;

(* currying *)
let concat (s1, s2) = s1 ^ s2 ^ s1;;
let concat_curry s1 s2 = s1 ^ s2 ^ s1;;
(* Same as let concat_curry s1 = fun s2 -> s1 ^ s2 ^ s1;; *)
let emphasize = concat_curry "_";;
print_string (concat ("abc", ","));;
print_string "\n";;
print_string ((concat_curry "abc") ",");;
print_string "\n";;
print_string (emphasize "abc");;
print_string "\n";;

(* prefix operator *)
print_int (abs ~-3);;
print_string "\n";;