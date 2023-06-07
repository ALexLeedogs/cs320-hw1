(* ****** ****** *)
use "./../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

(*
HX-2023-06-06: 10 points
Fibonacci numbers can be recursively
defined as follows:
fun fibonacci(x: int): int =
  if x >= 2
  then fibonacci(x-2)+fibonacci(x-1) else x
Please use int1_foldleft to implement the
function fibonacci WITHOUT using recursion.
PLEASE NOTE THAT YOU CANNOT DEFINE RECURSIVE
FUNCTIONS IN YOUR IMPLEMENTATION. If you do,
your implementation is disqualified.
*)

fun fibonacci_nonrec(x: int): int =
    if x = 0 then
        0
    else
        #1 (int1_foldleft(x, (0, 1), fn((a, b), _) => (b, a + b)))

val f1 = fibonacci_nonrec(3)

(* end of [CS320-2023-Sum1-midterm1-fibonacci.sml] *)
