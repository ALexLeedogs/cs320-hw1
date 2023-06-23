(* ****** ****** *)

use
"./../../../mysmlib/mysmlib-cls.sml";

(* ****** ****** *)

(*
fun
stream_take(fxs, n) = ...
*)

(* ****** ****** *)

(* end of [CS320-2023-Sum1-stream_take.sml] *)

fun stream_take (fxs: 'a stream, n: int): 'a stream =
  if n <= 0 then
    stream_nil()
  else
    fn () =>
      case fxs() of
        strcon_nil => strcon_nil
      | strcon_cons(x, fxs) => strcon_cons(x, stream_take(fxs, n-1))


(*

original code

fun stream_take (stream: 'a stream, n: int): 'a stream = fn () =>
  if n <= 0 then
    stream_nil()
  else
    (missing fn()=>)
      case fxs() of
        strcon_nil => strcon_nil
      | strcon_cons(x, fxs) => strcon_cons(x, stream_take(fxs, n-1))



*)