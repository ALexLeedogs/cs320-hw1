(* ****** ****** *)
use "./../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)
(*
int2real
coerces an int into a real:
*)
val int2real = Real.fromInt
(* ****** ****** *)
(*
HX-2023-03-01: midterm1-01: 10 points
*)
(* ****** ****** *)
(*
Given a list of reals xs, list_averages(xs)
returns another list ys of reals such that:
ys[0] = xs[0] / 1.0
ys[1] = (xs[0] + xs[1]) / 2.0
ys[2] = (xs[0] + xs[1] + xs[2]) / 3.0
In general, ys[i] is the average of the first
(i+1) elements in xs.
//
For instance,
list_averages([]) = []
list_averages([1.0,2.0,3.0]) = [1.0,1.5,2.0]
list_averages([1.0,2.0,3.0,4.0]) = [1.0,1.5,2.0,2.5]
//
Note that you are allowed to define recursive
functions in your implementation of list_averages.
//
*)
(* ****** ****** *)


fun list_averages (xs: real list): real list =
  let
    fun average (res: real list, xs: real list, sum: real, count: real): real list =
      case xs of
        [] => list_reverse res
      | x::rest =>
            average ((sum + x)/ (count + 1.0) :: res, rest, sum + x, count + 1.0)
  in
    average ([], xs, 0.0, 0.0)
  end


val xs = [1.0,2.0,3.0,4.0,5.0]
val rlist = list_averages(xs)
(* ****** ****** *)

(* end of [CS320-2023-Sum1-midterm1-list_averages.sml] *)
