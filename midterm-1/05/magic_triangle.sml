(* ****** ****** *)
use "./../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)
(*
HX-2023-06-06: midterm1-05: 20 points
*)
(* ****** ****** *)
(*
Magic Triangle:
             1
           1   1
         1   2   1
       1   3   3   1
     1   4   6   4   1
   1   5   10  10  5   1
 1   6   15  20  15  6   1

THe magic triangle has the following structure:
- All numbers on the left and right borders are 1.
- All numbers in the interior (non-border) are the sum of the numbers in the row directly above it.

The following example shows how row 6 is computed from row 5.

row 5:      1     4     6     4    1
           / \   / \   / \   / \  / \
row 6:    1   1+4   4+6   6+4  4+1   1


We can represent a magic triangle in SML as an int list list where each row
is stored as a nested int list.

row 0  [[1]
row 1   [1,  1]
row 2   [1,  2,  1]
row 3   [1,  3,  3,  1]
row 4   [1,  4,  6,  4,  1]
row 5   [1,  5,  10, 10, 5,  1]
row 6   [1,  6,  15, 20, 15, 6,  1]]
...


Please implement a function that produces a magic triangle with n row.

triangle 0 = [[1]]
triangle 1 = [[1], [1, 1]]
triangle 2 = [[1], [1, 1], [1, 2, 1]]
triangle 3 = [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1]]
triangle 4 = [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]]
...
triangle n = ??

Hint: You might want a helper function to compute the current row from
the previous.

*)




fun
magic_triangle (n : int) : int list list = 
  let
    fun next_row([]: (int list)): (int list) = [1]
      | next_row(row: (int list)): (int list) =
          let
            fun add([x1, x2]: (int list)): (int list) = [x1 + x2]
              | add(x1::x2::xs: (int list)): (int list) = (x1 + x2) :: add(x2::xs)
              | add(_: (int list)): (int list) = []
          in
            1 :: add(row) @ [1]
          end

    fun build(0: int): (int list) list = [[1]]
      | build(n: int): (int list) list =
          let
            val prev: (int list) list = build(n - 1)
            val prev_row: (int list) = list_last(prev)
            val next_row: (int list) = next_row(prev_row)
          in
            prev @ [next_row]
          end
  in
    build(n)
  end
val triangle = magic_triangle 4

(* ****** ****** *)

(*
val () =
assert320
(
magic_triangle(5) =
[[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1],[1,5,10,10,5,1]])
*)

(* ****** ****** *)

(* end of [CS320-2023-Sum1-midterm1-magic_triangle.sml] *)
