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
fun occursEarlier (a, b, xs) =
  let
    fun helper a b [] = false
      | helper a b (x::xs) = if x = a then true
                             else if x = b then false
                             else helper a b xs
  in
    helper a b xs
  end

fun insert(res, x1) =
    case list_reverse res of
        [] => [x1]
      | y::ys =>
        if x1 >= y then res @ [x1]
        else insert(list_reverse(ys), x1)


fun list_longest_ascend(xs: int list): int list =
  let
    fun helper(low,xs,res,prev,original) = 
    case xs of 
    [] => res
    | x1::xs1 =>
    if x1 >= prev
    then
    let 

        val keep = helper(low,xs1,list_append(res,[x1]),x1,original)
        val drop = helper(low,xs1,res,list_last(res),original)

    in
        if list_length(keep) >= list_length(drop)
        then keep
        else drop
    end

    else 
        if x1 < low
        then
        let
            val keep = helper(x1,xs1,[x1],x1,original)
            val drop = helper(low,xs1,res,list_last(res),original)
        in
            if list_length(keep) > list_length(drop)
            then keep
            else if list_length(keep) < list_length(drop)
            then drop
            else if occursEarlier(list_head(keep),list_head(drop),original) then keep
            else drop
        end

        else 
        let
            val inserted = insert(res,x1)
            val keep = helper(low,xs1, inserted, list_last(inserted),original)
            val drop = helper(low,xs1,res,list_last(res),original)

        in
            if list_length(keep) > list_length(drop)
            then keep
            else drop
        end
  in
    case xs of
      [] => []
    | x1::xs1 => helper(x1,xs1,[x1],x1,xs)
  end






val x = [2, 1, 2, 1, 3, 3, 2, 2]
val b = [2, 1, 2, 1, 3, 3, 2, 2, 4, 3, 4, 5, 3, 5]
val c = [2, 1, 3, 3, 4, 4, 5]
val d = [2, 1, 1, 3, 3, 2, 4, 4, 5]
val e = [4, 1, 2, 1, 3, 8, 9, 5, 6, 7, 1, 1, 1, 1, 1, 1, 1]
val h = [1,2,3,4,1,2,3,4]


(*
expected output after calling the function is 
x=[2, 2, 3, 3, 4, 4, 5, 5]
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

