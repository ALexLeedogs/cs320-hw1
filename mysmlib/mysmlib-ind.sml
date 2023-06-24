(* ****** ****** *)
(*
HX-2023-05-23:
Library functions
for BUCASCS320-2023-Sum1
This is an individual library,
that is, it is NOT shared by the class.
*)
(* ****** ****** *)

(* end of [BUCASCS320-2023-Sum1-mysmlib-ind.sml] *)


fun find_empty_stream [] = false
  | find_empty_stream (x::xs) = 
    case x() of
        strcon_nil => true
      | _ => find_empty_stream xs