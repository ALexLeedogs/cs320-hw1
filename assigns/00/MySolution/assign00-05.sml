(* ****** ****** *)

use "./../assign00-lib.sml";

(* ****** ****** *)

fun
stringrev
(cs: string): string = 
let
    fun helper (len: int): string = 
    if len <= 0 then "" else 
    String.str(String.sub(cs, len -1)) ^ helper(len - 1)

in
    helper(String.size(cs))
end

val myan1 = stringrev("abcd")
val myan2 = stringrev("efg")


(* ****** ****** *)

(* end of [CS320-2023-Spring-assign00-05.sml] *)
