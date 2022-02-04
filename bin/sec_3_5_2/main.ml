(* Iteration *)
let fact n =
  let rec iterfact (i, res) =
    if i = n then res
    else iterfact (i+1, res * i) in
  iterfact (1, 1);;

print_int (fact 19);;
print_string "\n";;

