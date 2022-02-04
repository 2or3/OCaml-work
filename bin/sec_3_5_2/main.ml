(* Iteration *)
let fact n =
  let rec iterfact (i, res, n) =
    if i = n then res
    else iterfact (i+1, res * i, n) in
  iterfact (1, 1, n);;

print_int (fact 19);;
print_string "\n";;
