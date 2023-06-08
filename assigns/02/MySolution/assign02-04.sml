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



fun current(xs: int list): int list =
  let
    fun helper([], longest) = longest
      | helper(x::xs', []) = helper(xs', [x])
      | helper(x::xs', longest as last::_) =
          if x >= last
          then helper(xs', x::longest)
          else helper(xs', longest)
  in
    list_reverse(helper(xs, []))
  end

fun list_longest_ascend(xs: int list): int list =
  let
    fun compare([], longest) = current(longest)
      | compare(x::xs1, []) = compare(xs1, x::xs1)
      | compare(x::xs1, longest) =
          if list_length(current(longest)) >= list_length(current(x::xs1))
          then compare(xs1, longest)
          else compare(xs1, x::xs1)
  in
    compare(xs,[])
  end





val x = [1, 2, 3, 4, 5]
val b = [5, 4, 3, 2, 1]
val c = [2, 1, 3, 3, 4, 4, 5]
val d = [2, 1, 1, 3, 3, 2, 4, 4, 5]
val e = [4, 1, 2, 1, 3, 8, 9, 5, 6, 7, 1, 1, 1, 1, 1, 1, 1]
(*
expected output after calling the function is 
x=[1, 2, 3, 4, 5]
b=[5]
c = [2, 3, 3, 4, 4, 5]
d = [ 1, 1, 3, 3, 2, 4, 4, 5]
e = [1,1,1,1,1,1,1,1,1]




*)



val myans1 = list_longest_ascend x
val myans2 = list_longest_ascend b 
val myans3 = list_longest_ascend c
val myans4 = list_longest_ascend d
val myans7 = list_longest_ascend e
val test = current(e)

