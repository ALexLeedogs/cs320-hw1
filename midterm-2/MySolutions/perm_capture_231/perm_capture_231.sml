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

fun helper(a, blist, clist) =
    case blist of 
    [] => false
    | b1::blist1 =>
        case clist of
          [] => false
        | c1::clist1 => 
            list_x2exists([b1], clist1, fn (b, c) => c < a andalso a < b)
            orelse (helper(a, blist1, clist1))

fun perm_capture_231(xs: int list): bool =
      case xs of
        [] => false
      | x1::xs =>
          helper(x1, xs, xs) orelse perm_capture_231(xs)
