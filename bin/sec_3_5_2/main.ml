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

(* practice 3-7-1 *)
let pow (x, n) =
  let rec powfact (i, x, res) =
    if i = n then res
    else powfact (i + 1, x, res *. x) in
  powfact (1, x, x);;

print_float (pow (5.2, 10));;
print_string "\n";;

(* practice 3-7-2 *)
let rec pow (x, n) =
  if n = 1 then x
  else if n mod 2 = 0 then pow (x *. x, n / 2)
  else pow (x *. x, (n - 1) / 2) *. x;;

print_float (pow (5.2, 10));;
print_string "\n";;

(* practice 3-8 *)
let iterpow x n =
  let rec pow res x n =
    if n = 1 then res
    else pow (res * x) x (n - 1) in
  pow x x n;;

print_int (iterpow 3 5);;
print_string "\n";;

(* practice 3-11-1 *)
let rec gcd n m =
  if m = 0 then n
  else if n > m then gcd m (n mod m)
  else gcd n (m mod n);;

print_int (gcd 3355 2379);;
print_string "\n";;