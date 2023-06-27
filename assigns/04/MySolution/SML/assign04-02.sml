(* ****** ****** *)
use
"./../../../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

(*
//
HX-2023-06-20: 20 points
Please implement the following function
that enumerates all the pairs (i, j) of natural
numbers satisfying $i <= j$; a pair (i1, j1) must
be enumerated ahead of another pair (i2, j2) if the
following condition holds:
  i1*i1*i1 + j1*j1*j1 < i2*i2*i2 + j2*j2*j2
//
val
theNatPairs_cubesum: (int * int) stream = fn () => ...
//
*)

(* ****** ****** *)

(* end of [CS320-2023-Sum1-assign04-02.sml] *)

val theNatPairs_cubesum: (int * int) stream =
  let 
    fun cubeSum ((i1, j1), (i2, j2)) =
      i1*i1*i1 + j1*j1*j1 <= i2*i2*i2 + j2*j2*j2
    
    fun generate(n) = stream_tabulate(~1, fn a => (n, a + n))

    fun buildStream(n): (int * int) stream =
      fn () =>
        let
          fun combined() = stream_merge2(generate(n), buildStream(n + 1), cubeSum)
        in
          strcon_cons((0, n), combined ())
        end
  in
    stream_cons((0, 0), buildStream(1))
  end




