(* ****** ****** *)
use
"./../../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

(*
HX-2023-06-05: 10 points
Please give a NON-RECURSIVE implementation
of isPrime that is based on combinators in
the mysmlib-library for this class.
*)

fun
isPrime
(n0: int): bool =
let
  fun
  check(i0: int): bool = n0 mod i0 <> 0
  val divisors = list_fromto(2, n0)
in
  if n0 >= 2 then list_forall(divisors, check) else false
end






(* end of [CS320-2023-Sum1-assign02-05.sml] *)
