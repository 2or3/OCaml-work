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

(* infix operator *)
let (^-^) x y = x * 2 + y * 3;;
print_int(9 ^-^ 6);;
print_string "\n";;

(* Newton-Raphson *)
let deriv f =
  let dx = 0.1e-10 in
    fun x -> (f(x +. dx) -. f(x)) /. dx;;

print_float (deriv (fun x -> x *. x *. x) 3.0);;
print_string "\n";;

let fixpoint f init =
  let threshold = 0.1e-10 in
  let rec loop x =
    let next = f x in
    if abs_float (x -. next) < threshold then x
    else loop next
  in loop init;;

let newton_transform f = fun x -> x -. f(x) /. (deriv f x);;

let newton_method f guess = fixpoint (newton_transform f) guess;;

let square_root a = newton_method (fun x -> x *. x -. a) 1.0;;
print_float (square_root 5.0);;
print_string "\n";;

(* practice 3.14 *)
let rec pow x n =
  if n = 1 then x
  else if n mod 2 = 0 then (pow (x *. x)) (n / 2)
  else (pow (x *. x)) ((n - 1) / 2) *. x;;

print_float (pow 5.2 10);;
print_string "\n";;
