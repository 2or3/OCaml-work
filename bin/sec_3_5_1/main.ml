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

(* even/odd *)
let rec even n =
  if n = 0 then true else odd (n - 1)
and odd n =
  if n = 0 then false else even (n - 1);;

let res = even 10;;
print_string (string_of_bool res);;
print_string "\n";;
let res = odd 9;;
print_string (string_of_bool res);;
print_string "\n";;
let res = even 11;;
print_string (string_of_bool res);;
print_string "\n";;
let res = odd 8;;
print_string (string_of_bool res);;
print_string "\n";;