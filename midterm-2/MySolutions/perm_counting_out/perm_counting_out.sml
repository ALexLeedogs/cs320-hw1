(* ****** ****** *)

use
"./../../../mysmlib/mysmlib-cls.sml";

(* ****** ****** *)

(*
//
// HX-2023-04-20: 20 points
//
Given a list xs and a natural number k0,
perm_counting_out(xs, k0) returns a permutation
of xs where the elements are listed according to
the order they are "counted out" in the following
process of counting:
//
Counting of the elements xs goes left to right
and the first count is 0. When the count reaches
k0, the element being counted is removed (that is,
the element is counted out) and counting starts again
with the following element. If counting reached the
last element remaining in the list, then the next element
to be counted is the first element in the list. Counting
stops when all the elements are counted out.
//
For instance,
perm_counting_out([1,2,3], 0) = [1,2,3]
perm_counting_out([1,2,3], 1) = [2,1,3]
perm_counting_out([1,2,3], 2) = [3,1,2]
perm_counting_out([1,2,3], 3) = [1,3,2]
perm_counting_out([1,2,3,4], 1) = [2,4,3,1]
perm_counting_out([1,2,3,4], 3) = [4,1,3,2]
//
*)

(* ****** ****** *)

(*
fun
perm_counting_out
(xs: int list, k0: int): int list = ...
*)

(* ****** ****** *)

(* end of [CS320-2023-Spring-midterm2-perm_counting_out.sml] *)

fun perm_counting_out(xs: int list, k0: int): int list =
    let
        fun count(rest, ind, acc) =
            case rest of
                [] => list_reverse(acc)
              | x::rest1 =>
                    let
                        val n = list_length(rest)
                        val i = (ind + k0) mod n
                    in
                        count (
                            (list_map ((foreach_to_filter_list ((foreach_to_iforeach (list_foreach)))
                                       (rest, fn (index, x) => index < i)),
                                       fn (index, element) => element))
                            @
                            (list_map ((foreach_to_filter_list ((foreach_to_iforeach (list_foreach)))
                                       (rest, fn (index, x) => index > i )),
                                       fn (index, element) => element)),
                            i, (foreach_to_get_at (list_foreach))(rest, i)::acc
                        )
                    end
    in
        count(xs, 0, [])
    end

(*

original code

fun perm_counting_out(xs: int list, k0: int): int list =
    let
        fun count(rest, ind, acc) =
            case rest of
                [] => list_reverse(acc)
              | x::rest1 =>
                    let
                        val n = list_length(rest)
                        val i = (ind + k0) mod n
                    in
                        count (
                            (list_map ((foreach_to_filter_list ((foreach_to_iforeach (list_foreach)))
                                       (rest, fn (index, x) => index < i)),
                                       fn (index, element) => element))
                            @
                            (list_map ((foreach_to_filter_list ((foreach_to_iforeach (list_foreach)))
                                       (rest, fn (index, x) => index > i )),
                                       fn (index, element) => element)),
                            i, (foreach_to_get_at (list_foreach))(rest, i)::acc
                        )
                    end
    in
        count(xs, 0, [])
    end

*)