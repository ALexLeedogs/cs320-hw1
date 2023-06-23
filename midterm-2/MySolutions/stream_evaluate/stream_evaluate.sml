(* ****** ****** *)

use
"./../../../mysmlib/mysmlib-cls.sml";

(* ****** ****** *)

(*
//
// HX-2023-04-20: 20 points
//
Given a stream fxs of real numbers a0, a1, a2, ...
and a real number x0, stream_evaluate(fxs, x0)
returns another stream of real number that enumerates
all of the following partial sums:
a0, a0 + a1*x0, a0 + a1*x0 + a2*x0^2, ...
The general form of the enumerated sums is given as follows
(a0 + a1*x0 + a2*x0^2 + ... + an * x0^n)
*)

(* ****** ****** *)

(*
fun
stream_evaluate
( fxs
: real
  stream
, x0: real): real stream = ...
*)

(* ****** ****** *)

(* end of [CS320-2023-Sum1-midterm2-stream_evaluate.sml] *)

fun stream_evaluate(fxs: real stream, x0: real): real stream =
    let
        fun helper(stream: real stream, px0: real, acc: real): real stream =
            fn () =>
                case stream () of
                    strcon_nil => strcon_nil
                  | strcon_cons(x, rest) =>
                        let
                            val new = acc + x * px0
                            val next = helper(rest, x0*px0, new)
                        in
                            strcon_cons(new, next)
                        end
    in
        helper(fxs, 1.0, 0.0)
    end

(*

original code 
fun stream_evaluate(fxs: real stream, x0: real): real stream =
    let
        fun helper(stream, px0, acc) = 
                case stream () of
                    strcon_nil => strcon_nil
                  | strcon_cons(x, rest) =>
                        let
                            val new = acc + x * px0
                            val next = helper(rest, x0*px0, new)
                        in
                            strcon_cons(new, fn() => next)
                        end
    in
        helper(fxs, 1.0, 0.0)
    end

*)