(* List match *)
let rec sum_list l =
  match l with
    [] -> 0
  | n :: rest -> n + (sum_list rest);;

print_int (sum_list [1; 5; 3; 9]);;
print_string "\n";;
print_int (sum_list (1 :: 4 :: 11 :: 9 :: []));;
print_string "\n";;

