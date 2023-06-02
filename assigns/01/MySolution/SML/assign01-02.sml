(* ****** ****** *)
use "./../../assign01-lib.sml";
(* ****** ****** *)
use "./../../MySolution/SML/assign01-01.sml";
(* ****** ****** *)

(*
//
Assign01-02: 10 points
//
Please implement a function
that does subscripting on xlist DIRECTLY:
//
fun xlist_sub(xs: 'a xlist, i0: int): 'a
//
If 'i0' is an illegal index, then xlist_sub
should raise the XlistSubscript exception.
//
You should NOT convert xlist into list and
then do subscripting.
//
*)

(* ****** ****** *)

fun
xlist_sub
(xs: 'a xlist, i0: int): 'a = 
case xs of
xlist_nil => raise XlistSubscript
| xlist_cons(x1,xs1) => if i0 <= 0 then x1 
else if i0 > xlist_size(xs) - 1
then raise XlistSubscript
else xlist_sub(xs1, i0-1)
| xlist_snoc(xs1,x1) => if i0 <= 0 then x1 
else if i0 > xlist_size(xs) - 1
then raise XlistSubscript
else xlist_sub(xs1,i0-1)
| xlist_append(xs1,xs2)=>
let
val xs1size = xlist_size(xs1) 
val xs2size = xlist_size(xs2)
in
if i0 <= 0 then xlist_sub(xs1,0)
else if i0 > xs1size + xs2size - 1
then raise XlistSubscript
else if i0 < xs1size 
then xlist_sub(xs1,i0)
else xlist_sub(xs2, i0 - xs1size)
end
| xlist_reverse(xs1)=>
xlist_sub(xs1,i0)



(* ****** ****** *)

(* end of [CS320-2023-Sum1-assign01-02.sml] *)
