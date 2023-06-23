(* ****** ****** *)

use
"./../../../mysmlib/mysmlib-cls.sml";

(* ****** ****** *)

(*
//
// HX-2023-04-20: 20 points
//
// A non-empty sequence of numbers forms a
// "drawdown" if every number in the sequence does not
// exceed the first one. A maximal drawdown is one that
// is not contained in any longer drawdowns.
// Please implement a function stream_drawdowns that takes
// a stream fxs of integers and returns a stream consisting
// of all the maximal drawdowns in fxs.
//
*)

(* ****** ****** *)

(*
fun
stream_drawdowns
(fxs: int stream): int list stream = ...
*)
  
(* ****** ****** *)

(* end of [CS320-2023-Sum1-midterm2-stream_drawdowns.sml] *)
fun stream_drawdowns(fxs: int stream): int list stream =
  let
    fun find(maxOpt, rest: int stream, drawdown: int list) (): int list strcon =
      case rest () of
        strcon_nil => 
          (case maxOpt of
             NONE => strcon_nil
           | SOME max => strcon_cons(list_reverse drawdown, stream_nil()))
      | strcon_cons(x, rest1) =>
          (case maxOpt of
             NONE => find(SOME x, rest1, [x]) ()
           | SOME max =>
               if x <= max then
                 find(SOME max, rest1, x::drawdown) ()
               else
                 strcon_cons(list_reverse drawdown, fn () => find(SOME x, rest1, [x]) ()))
  in
    fn () => find(NONE, fxs, []) ()
  end

(*
original code is 

fun stream_drawdowns(fxs: int stream): int list stream =
  let
    fun find(maxOpt, rest: int stream, drawdown: int list) (): int list strcon =
      case rest  of
        strcon_nil => 
          (case maxOpt of
             NONE => strcon_nil
           | SOME max => strcon_cons(list_reverse drawdown, stream_nil()))
      | strcon_cons(x, rest1) =>
          (case maxOpt of
             NONE => find( x, rest1, [x]) ()
           | SOME max =>
               if x <= max then
                 find(SOME max, rest1, x::drawdown) 
               else
                 strcon_cons(list_reverse drawdown, fn () => find(SOME x, fxs, [x]) ))
  in
    find(NONE, fxs, []) 
  end


*)