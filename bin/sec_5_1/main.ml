(* List *)
let list = [3; 9; 0; -10];;
List.iter (Printf.printf "%d ") list;;
print_string "\n";;

let lt = [10; -11; 3; 5];;
List.iter (Printf.printf "%d ") (9 :: lt);;
print_string "\n";;

List.iter (Printf.printf "%d ") ((::) (100, lt));;
print_string "\n";;
