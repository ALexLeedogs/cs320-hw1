(* ****** ****** *)
use "./../../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

(*
//
HX-2023-02-09: 10 points
//
The function find_root(f0)
finds the first root of [f0] in
the following sequence:
0, 1, -1, 2, -2, 3, -3, 4, -4, ...
*)
fun find_root(f0: (int -> int)): int =
  let
    fun iterate(x: int): int =
      let
        val newX = if x > 0 then (~x) else ((~x)+1)
      in
        if (f0(x) = 0)
        then x
        else iterate(newX)
      end
  in
    iterate(0)
  end;


(* ****** ****** *)

(* end of [CS320-2023-Sum1-assign02-01.sml] *)
