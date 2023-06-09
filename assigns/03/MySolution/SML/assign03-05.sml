(* ****** ****** *)
use
"./../../../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

(*
HX-2023-06-12: 10 points
Please enumerate all the pairs of natural
numbers. Given pairs (i1, j1) and (i2, j2),
(i1, j1) should be enumerated ahead of (i2, j2)
if i1+j1 < i2+j2.
*)

(* ****** ****** *)

(*
val theNatPairs: (int*int) stream = fn () => ...
*)

(* ****** ****** *)

(* end of [CS320-2023-Sum1-assign03-05.sml] *)
val theNatPairs: (int * int) stream = 
    let 
        fun helper(i, j) =
            if i > j 
            then fn () => helper(0, j + 1) ()
            else stream_cons((i, j - i), fn () => helper(i + 1, j) ())
    in
        fn () => helper(0, 0) ()
    end





