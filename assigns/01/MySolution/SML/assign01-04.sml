(* ****** ****** *)

use "./../../assign01-lib.sml";

(* ****** ****** *)

(*
//
Assign01-04: 10 points
//
Please recall the following question in Assign00:
Assign00-04: 10 points
Please implement a function that converts a given
string to an integer:
fun str2int(cs: string): int
In particular, it is expected that str2int(int2str(x)) = x
//
This time you are asked to implement the following
function that only turns a legal representation of an integer
into an integer. By a legal representation of an integer, we
mean a string consisting of a non-empty sequence of digits (where
the digit '0' can be a leading digit).
//
fun str2int_opt(cs: string): int option
//
*)

(* ****** ****** *)
fun str2int_opt(cs: string): int option =
  let
    fun isDigit(c: char): bool =
      Char.isDigit c

    fun helper(i: int, count: int): int option =
      if i = size cs then SOME count
      else
        case String.sub (cs, i) of
          #"0" => helper (i + 1, count * 10)
        | #"1" => helper (i + 1, count * 10 + 1)
        | #"2" => helper (i + 1, count * 10 + 2)
        | #"3" => helper (i + 1, count * 10 + 3)
        | #"4" => helper (i + 1, count * 10 + 4)
        | #"5" => helper (i + 1, count * 10 + 5)
        | #"6" => helper (i + 1, count * 10 + 6)
        | #"7" => helper (i + 1, count * 10 + 7)
        | #"8" => helper (i + 1, count * 10 + 8)
        | #"9" => helper (i + 1, count * 10 + 9)
        | _ => NONE
  in
    if size cs = 0 then NONE
    else helper (0, 0)
  end

						
(* ****** ****** *)

(* end of [CS320-2023-Sum1-assign01-04.sml] *)
