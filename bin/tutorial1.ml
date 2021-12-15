(** Cannot override vars on OCaml. *)
let rate = 116.78;;
let yen_to_dollar yen = yen /. rate;;
let rate = 3.14;;
yen_to_dollar 980.
  |> print_float;;

