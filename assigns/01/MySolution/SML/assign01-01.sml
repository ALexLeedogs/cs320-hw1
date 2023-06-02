(* ****** ****** *)

use "./../../assign01-lib.sml";

(* ****** ****** *)

(*
//
Assign01-01: 10 points
//
Please implement a function
that computes the size of an xlist DIRECTLY:
//
fun xlist_size(xs: 'a xlist): int
//
That is, you should NOT convert xlist into list
and then compute the size of the converted list
//
*)

(* ****** ****** *)

fun
xlist_size(xs: 'a xlist): int = 
case xs of
xlist_nil => 0
| xlist_cons(_,rest) => 1 + xlist_size(rest)
| xlist_snoc(rest,_) => xlist_size(rest) + 1
| xlist_append(x1,x2) => xlist_size(x1) + xlist_size(x2)
| xlist_reverse(x1) => xlist_size(x1)




(* ****** ****** *)

(* end of [CS320-2023-Sum1-assign01-01.sml] *)
