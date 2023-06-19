(* ****** ****** *)
use
"./../../../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

(*
HX-2023-06-12: 10 points
Please enumerate all the pairs of natural
numbers. Given pairs (i1, j1) and (i2, j2),
(i1, j1) should be enumerated ahead of (i2, j2)
if i1+j1 < i2+j2.
*)

(* ****** ****** *)

(*
val theNatPairs: (int*int) stream = fn () => ...
*)

(* ****** ****** *)

(* end of [CS320-2023-Sum1-assign03-05.sml] *)
(* Function to generate pairs (i, j) in diagonal order *)
val theNatPairs: (int * int) stream =
  let
    fun outer(i: int): (int * int) strcon =
      strcon_cons((i, 0), fn () => inner(i, i))
    and inner(i: int, j: int): (int * int) strcon =
      if j > 0
      then strcon_cons((i - j, j), fn () => inner(i, j - 1))
      else outer(i + 1)
  in
    fn () => outer(0)
  end;


