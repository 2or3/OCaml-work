(* 局所的変数束縛 *)
let pi = 3.1415926535;;

let vol_cone =
  let base = pi *. 2.0 *. 2.0 in
  base *. 5.0 /. 3.0;;

print_float vol_cone;;
print_string "\n";;

let f x =
  let x3 = x * x * x in
  let x3_1 = x3 + 1 in
  x3 + x3_1;;

print_int (f 5);;
print_string "\n";;

let g x =
  let power3 x = x * x * x in
  (power3 x) + (power3 (x + 1));;

print_int (g 5);;
print_string "\n";;

(* 変数の同時束縛 *)
let x =
  let f x = "foo" ^ x
  and y = 3.1 in
  f (string_of_float y);;

print_string x;;
print_string "\n";;

let rate = 114.32;;
(* 3.1.1 *)
let res =
  let doller_to_yen d = int_of_float (d *. rate) in
  doller_to_yen 10.0;;

print_int res;;
print_string "\n";;

(* 3.1.2 *)
let res =
  let yen_to_doller y = truncate ((float_of_int y) /. rate +. 0.5) in
  yen_to_doller 200;;

print_int res;;
print_string "\n";;

(* 3.1.3 *)
let res =
  let doller = 10.0 in
  let doller_to_yen d = int_of_float (d *. rate) in
  string_of_float doller ^ " dollars are " ^ string_of_int (doller_to_yen 10.0) ^ " yen.";;

print_string res;;
print_string "\n";;

(* 3.1.4 *)
let capitalize c = Char.uppercase_ascii c;;

print_char (capitalize 'c');;
print_string "\n";;
