(* ****** ****** *)
use "./../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

(*
HX-2023-06-06: 10 points
Please use int1_foldleft to implement
the following functions list_factorials
which, when applied to an integer n, returns
a list consisting the first n factorial numbers.
For instance, we have
list_factorials(0) = []
list_factorials(5) = [1, 1, 2, 6, 24]
list_factorials(6) = [1, 1, 2, 6, 24, 120]
PLEASE NOTE THAT YOU CANNOT DEFINE RECURSIVE
FUNCTIONS IN YOUR IMPLEMENTATION. If you do,
your implementation is disqualified.
*)

fun list_factorials(n: int): int list =
    let
        val initial = (1, [1])  
        val len = if n > 1 then n - 1 else 0  
        val (_, facts) = int1_foldleft(len, initial, 
            fn((prod, lst), _) => let val newFact = prod * length(lst) in (newFact, newFact :: lst) end)
    in
        if n = 0 then [] 
        else if n = 1 
        then [1]
        else list_reverse facts
    end




val a = list_factorials(6)



(* ****** ****** *)

(* end of [CS320-2023-Sum1-midterm1-list_factorials.sml] *)
