(* Recursion *)
let rec fact n =
  if n <= 1 then 1 else fact (n - 1) * n;;

let res = fact 9;;
print_int res;;
print_string "\n";;

(* Fib *)
let rec fib n =
  if n = 1 || n = 2 then 1 else fib (n - 1) + fib (n - 2);;

let res = fib 10;;
print_int res;;
print_string "\n";;

(* fib pair *)
let fib n =
  let rec fib_pair n =
    if n = 1 then (1, 0)
    else
      let (i, j) = fib_pair (n - 1) in
      (i + j, i)
  in
  let (i, _) = fib_pair n in i;;

let res = fib 50;;
print_int res;;
print_string "\n";;
