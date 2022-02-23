(* Combinator *)
let ($) f g x = f (g x);;

let id x = x;;
print_float ((sqrt $ id) 3.0);;
print_string "\n";;
