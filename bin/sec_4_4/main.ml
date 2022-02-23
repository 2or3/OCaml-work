(* Practice *)
(* 4.1 *)
let uncurry f (x, y) = f x y;;
let average x y = (x +. y) /. 2.0;;
let uncurried_avg = uncurry average;;

print_float (average 3.0 5.0);;
print_string "\n";;
print_float (uncurried_avg (3.0, 5.0));;
print_string "\n";;

(* 4.2 *)
let rec repeat f n x =
  if n > 0 then repeat f (n - 1) (f x) else x;;

let fib n =
  let (fibn, _) = repeat (fun (a, b) -> (a + b, a)) n (1,0)
  in fibn;;
print_int (fib 10);;
print_string "\n";;