let list = 10 :: 1 :: 4 :: 2 :: 32 :: [];;

(* length *)
let rec length l =
  match l with
    [] -> 0
  | _ :: rest -> 1 + length rest;;

print_int (length list);;
print_string "\n";;

(* append *)
let rec append l1 l2 =
  match l1 with
    [] -> l2
  | first :: rest -> first :: (append rest l2);;

List.iter (Printf.printf "%d ") (append [1; 2; 5] [2; 3]);;
print_string "\n";;
List.iter (Printf.printf "%d ") ([1; 2; 5] @ [2; 3]);;
print_string "\n";;

(* reverse *)
let reverse list =
  let rec rev l1 l2 =
    match l1 with
      [] -> l2
    | first :: rest -> rev rest (first :: l2) in
  rev list [];;

List.iter (Printf.printf "%d ") (reverse [1; 2; 3; 4; 5]);;
print_string "\n";;

(* map *)
let rec map f = function
    [] -> []
  | x :: rest -> f x :: map f rest;;

List.iter (Printf.printf "%d ") (map (fun x -> x * x) [1; 2; 3; 4; 5; 6; 7]);;
print_string "\n";;

(* forall *)
let rec forall p = function
    [] -> true
  | x :: rest -> if p x then forall p rest else false;;

print_string (string_of_bool (forall (fun x -> x > 5) [6; 10; 33]));;
print_string "\n";;
print_string (string_of_bool (forall (fun x -> x > 9) [6; 10; 33]));;
print_string "\n";;

(* exist *)
let rec exist p = function
    [] -> false
  | x :: rest -> if p x then true else exist p rest;;

print_string (string_of_bool (exist (fun x -> x > 34) [6; 10; 33]));;
print_string "\n";;
print_string (string_of_bool (exist (fun x -> x > 9) [6; 10; 33]));;
print_string "\n";;

(* fold right *)
let rec fold_right f l e =
    match l with
      [] -> e
    | x :: rest -> f x (fold_right f rest e)
  let rec fold_left f e l =
      match l with
        [] -> e
      | x :: rest -> fold_left f (f e x) rest;;

List.iter (Printf.printf "%d ") (fold_left (fun x y -> y :: x) [] [1; 2; 3; 7; 10; 22; 100]);;
print_string "\n";;

print_int (fold_right (fun x y -> x + y) [1; 2; 1; 2; 1; 2; 1] 0);;
print_string "\n";;

(* nth *)
let rec nth n l =
  match (n, l) with
      (1, a :: _) -> a
    | (_, _ :: rest) -> nth (n-1) rest
    | (_, _) -> 0;;

print_int (nth 3 [1; 4; 2; 5; 6; 5]);;
print_string "\n";;