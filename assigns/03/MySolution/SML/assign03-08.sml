(* ****** ****** *)
use
"./../../../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

(*
HX-2023-06-12: 10 points
Please implement the following function
that turns a list of streams into stream of
lists.
//
fun
stream_ziplst('a stream list): 'a list stream
//
If we use a list of streams to represent a
list of rows of a matrix, then the returned
stream consist of lists that are columns of the
matrix.
*)

(* ****** ****** *)

(* end of [CS320-2023-Sum1-assign03-08.sml] *)

fun find_empty_stream [] = false
  | find_empty_stream (x::xs) = 
    case x() of
        strcon_nil => true
      | _ => find_empty_stream xs

fun extract (strcons: 'a strcon list): 'a list * 'a stream list =
  let
    fun helper (strcons, heads, tails) =
      case strcons of
        [] => (heads, tails)
      | strcon::rest =>
          (case strcon of
            strcon_nil => raise Empty
          | strcon_cons (head, tail) => helper(rest, head::heads, tail::tails))
  in
    helper(strcons, [], [])
  end


fun stream_ziplst (streams: 'a stream list): 'a list stream = fn () =>
    if find_empty_stream streams then strcon_nil
    else
      let
          val strcons = list_map(streams, fn stream => stream())
          val (heads, tails) = extract(strcons)
      in
          strcon_cons (list_reverse(heads), stream_ziplst (list_reverse(tails)))
      end






