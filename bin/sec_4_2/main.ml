(* Type inference *)
let twice f x = f (f x);;
let fourtimes x = twice twice x in
  (fourtimes (fun x -> x + 1) 3,
   fourtimes (fun s -> "<" ^ s ^ ">") "abc");;
