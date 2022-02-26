let list = 10 :: 1 :: 4 :: 2 :: 32 :: [];;

(* length *)
let rec length l =
  match l with
    [] -> 0
  | _ :: rest -> 1 + length rest;;

print_int (length list);;
print_string "\n";;
