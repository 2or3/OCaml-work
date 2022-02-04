(* Iteration - tail recursive *)
let fact n =
  let rec iterfact (i, res) =
    if i = n then res
    else iterfact (i + 1, res * i) in
  iterfact (1, 1);;

print_int (fact 10);;
print_string "\n";;

(* tail recursive *)
let fact n =
  let rec tailfact (n, res) =
    if n = 1 then res
    else tailfact (n - 1, n * res) in
  tailfact (n - 1, 1);;

print_int (fact 10);;
print_string "\n";;

(* practice 3-7 *)
let pow (x, n) =
  let rec powfact (i, x, res) =
    if i = n then res
    else powfact (i + 1, x, res *. x) in
  powfact (1, x, x);;

print_float (pow (2.2, 3));;
print_string "\n";;

