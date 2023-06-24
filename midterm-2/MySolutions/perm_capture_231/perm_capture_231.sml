(* ****** ****** *)

use
"./../../../mysmlib/mysmlib-cls.sml";

(* ****** ****** *)

(*
//
// HX-2023-04-20: 20 points
//
A sequence xs of integers captures '231'
if there are three integers a, b, and c
appearing as a subsequence of in satisfying
c < a < b. Note that a, b, and c doe not have
to appear consecutively in xs.

For instance, [1,3,4,2] does capture '231'
For instance, [1,2,4,3] does not capture '231'
For instance, [1,2,3,4] does not capture '231'
*)

(* ****** ****** *)

(*
fun
perm_capture_231
(xs: int list): bool = ...
*)

(* ****** ****** *)

(* end of [CS320-2023-Sum1-midterm2-perm_capture_231.sml] *)

fun perm_capture_231 (xs: int list): bool =
    let
        fun helper1 (xs) =
            case xs of
                [] => false
              | x1::rest => helper2 (SOME x1, rest) orelse helper1 (rest)

        and helper2 (NONE, xs) = false
          | helper2 (SOME x1, []) = false
          | helper2 (SOME x1, x2::rest) =
            (x1 < x2) andalso helper3 (SOME x1, SOME x2, rest) orelse helper2 (SOME x1, rest)

        and helper3 (NONE, NONE, xs) = false
          | helper3 (SOME x1, SOME x2, []) = false
          | helper3 (SOME x1, SOME x2, x3::rest) = (x1 > x3) orelse helper3 (SOME x1, SOME x2, rest)
    in
        helper1 (xs)
    end;

