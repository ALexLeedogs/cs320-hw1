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

fun check (strcons)=
not (list_forall(strcons, fn (strcon) => case strcon of strcon_nil => false| _ => true) )


fun stream_to_strcon (stream) = 
list_map(stream, fn x => x())


fun stream_ziplst (xs: 'a stream list): 'a list stream = fn () =>
    let
    val current_strcons = stream_to_strcon(xs)
    in
    if check (current_strcons) then strcon_nil
    else
        let
        val col = list_map(current_strcons, fn strcon =>
            case strcon of
              strcon_nil => raise Empty
            | strcon_cons (col, _) => col)
        val rest = list_map(current_strcons, fn strcon =>
            case strcon of
              strcon_nil => raise Empty
            | strcon_cons (_, rest) => rest)
        in
        strcon_cons (col, stream_ziplst (rest))
        end
    end








