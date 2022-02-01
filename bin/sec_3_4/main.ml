(* tuple *)
let v = (1.0, 2.0);;

(* pattern match *)
let (x, y) = v;;
print_float x;;
print_string "\n";;
print_float y;;
print_string "\n";;

(* wildcard pattern *)
let author = ("Atsushi","Igarashi",174.0,61.0);;
let (first, last, _, _) = author;;
print_string (first ^ "\n");;
print_string (last ^ "\n");;

(* function with tuple *)
let average p =
  let (x, y) = p in
  (x +. y) /. 2.0;;
(* Or let average (x, y) = (x +. y) /. 2.0;; *)
let res = average (3.0, 5.0);;
print_float res;;
print_string "\n";;

(* 3.4.4 practice *)
let geo_mean (x, y) = sqrt (x *. y);;
let res = geo_mean (3.0, 4.0);;
print_float res;;
print_string "\n";;

let bmi (name, height, weight) =
  let ind = weight /. (height ** 2.0) in
  if ind < 18.5 then print_string (name ^ "さんはやせています" ^ "\n")
  else if ind < 25.0 then print_string (name ^ "さんは標準です" ^ "\n")
  else if ind < 30.0 then print_string (name ^ "さんは肥満です" ^ "\n")
  else print_string (name ^ "さんは高度肥満です" ^ "\n");;

bmi ("nagashima", 1.765, 75.5)

let sum_and_diff (x, y) = (x + y, x - y);;
let f (x, y) = sum_and_diff (x, y);;
let (sum, diff) = f (10, 20);;
print_int sum;;
print_string "\n";;
print_int diff;;
print_string "\n";;