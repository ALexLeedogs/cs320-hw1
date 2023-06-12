(* ****** ****** *)
use "./../../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

(*
HX-2023-02-10: 20 points
Given a list of integers xs,
please implement a function that find
the longest ascending subsequences of [xs].
If there are more than one such sequences,
the left most one should be returned.

fun list_longest_ascend(xs: int list): int list
*)

(* ****** ****** *)

(* end of [CS320-2023-Sum1-assign02-04.sml] *)

fun list_longest_ascend(xs: int list): int list =
case xs of 
[] => []
|x1::xs1=>
  let
    fun helper(x1,xs1,res) = 
    case xs1 of 
    [] => res
    | x2::xs1 =>
    if x2 >= x1 then list_append(x2::res, helper(x1,xs1,res))
    else helper(x1,xs1,res)
    val keep = x1:: list_longest_ascend(helper(x1,xs1,[]))
    val drop = list_longest_ascend(xs1)
    in
        if list_length(keep) >= list_length(drop)
        then keep
        else drop
    end









val x = [2, 1, 1, 3, 3, 2, 4, 4, 5]
val b = [2, 1, 2, 1, 3, 3, 2, 2, 4, 3, 4, 5, 3, 5]
val c = [2, 1, 3, 3, 4, 4, 5]
val d = [2, 1, 1, 3, 3, 2, 4, 4, 5]
val e = [4, 1, 2, 1, 3, 8, 9, 5, 6, 7, 1, 1, 1, 1, 1, 1, 1]
val h = [1,2,3,4,1,2,3,4]


(*
expected output after calling the function is 
x= [1, 1, 3, 3, 4, 4, 5]
b=[5]
c = [2, 3, 3, 4, 4, 5]
d = [ 1, 1, 3, 3, 4, 4, 5]
e = [1,1,1,1,1,1,1,1,1]

uyidesh


*)



val myans1 = list_longest_ascend x
val myans2 = list_longest_ascend b 
val myans3 = list_longest_ascend c
val myans4 = list_longest_ascend d
val myans7 = list_longest_ascend e
val myasn8 = list_longest_ascend h

