(* sorting *)
(* rand *)
let nextrand seed =
  let a = 16807.0 and m = 2147483647.0 in
    let t = a *. seed in
        t -. m *. floor (t /. m);;
let rec randlist n seed tail =
  if n = 0 then (seed, tail)
  else randlist (n-1) (nextrand seed) (seed::tail);;
