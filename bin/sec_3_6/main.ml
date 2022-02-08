(* high-order function *)
let rec sum_of (f, n) =
  if n = 0 then 0 else sum_of (f, n - 1) + f n;;

let square x = x * x;;
let sum_of_square = sum_of (square, n);;
let sum_of_cube n =
  let cube x = x * x * x in sum_of (square, n);;

print_int (sum_of_square 10);;
print_string "\n";;
print_int (sum_of_square 10);;
print_string "\n";;