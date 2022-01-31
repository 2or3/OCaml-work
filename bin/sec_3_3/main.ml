let pi = 3.141592;;
let vol_cone =
  let base = pi *. 2.0 *. 2.0 in
  base *. 5.0 /. 3.0;;

let f x =
  let x3 = x * x * x in
  let x3_1 = x3 + 1 in
  x3 + x3_1;;

print_float vol_cone;;
print_string "\n";;
print_int (f 5);;
print_string "\n";;