(* ****** ****** *)
use
"./../../../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

(*
HX-2023-06-19: 20 points
Given a list xs, stream_permute_list(xs) returns
a stream of ALL the permutations of xs.
For instance, if xs = [1,2,3], then the returned
stream should enumerate the following 6 lists:
[1,2,3], [1,3,2], [2,1,3], [2,3,1], [3,1,2] and [3,2,1]
//
fun
stream_permute_list(xs: 'a list): 'a list stream = ...
//
*)

(* ****** ****** *)

(* end of [CS320-2023-Sum1-assign04-01.sml] *)

fun insert_all_positions x xs =
  let
    fun aux pre suf acc = 
      case suf of
        [] => (List.revAppend pre [x]) :: acc
      | hd::tl => aux (hd::pre) tl ((List.revAppend pre (x::hd::tl))::acc)
  in
    aux [] xs []
  end;

fun stream_of_list lst = 
  case lst of
    [] => fn () => strcon_nil
  | x::xs => stream_cons (x, stream_of_list xs);

fun stream_permute_list xs =
  let
    fun permute [] = stream_cons ([], fn () => strcon_nil)
      | permute (x::xs) = 
          let
            fun aux s = 
              case s () of
                strcon_nil => fn () => strcon_nil
              | strcon_cons(perm, rest) => stream_concat (stream_cons (stream_of_list (insert_all_positions x perm), aux rest))
          in
            aux (permute xs)
          end
  in
    permute xs
  end;