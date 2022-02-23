(* Practice *)
(* 4.1 *)
let uncurry f (x, y) = f x y;;
let average x y = (x +. y) /. 2.0;;
let uncurried_avg = uncurry average;;

print_float (average 3.0 5.0);;
print_string "\n";;
print_float (uncurried_avg (3.0, 5.0));;
print_string "\n";;
