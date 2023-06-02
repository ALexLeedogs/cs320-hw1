type int2 = int * int
type int3 = int * int * int
type int4 = int * int * int * int
type int5 = int * int * int * int * int

val
int2_sort_nr =
fn(xs: int2): int2 => 
let
    val (x1, x2) = xs
in
    if x1 <= x2 then (x1,x2) else (x2,x1)
end
(* ****** ****** *)


val
int3_sort_nr =
fn(xs: int3): int3 => 
let 
    val (x1,x2,x3) = xs
    val (a, b) = int2_sort_nr(x1, x2)
    val (c, d) = int2_sort_nr(b, x3)
    val (e, f) = int2_sort_nr(a, c)
    val largest = d
    val smallest = e
    val middle = f
in

  (smallest, middle, largest)

end

val
int4_sort_nr =
fn(xs: int4): int4 => 
let
  val (x1,x2,x3,x4) = xs
  val (a,b,c) = int3_sort_nr(x1,x2,x3)
  val (d,e,f) = int3_sort_nr(b,c,x4)
  val largest = f
  val second = e
  val (g,h) = int2_sort_nr(a,d)
  val smallest = g
  val third = h

in
  (smallest, third, second, largest)
end

val
int5_sort_nr =
fn(xs: int5): int5 => 
let
 val (x1,x2,x3,x4,x5) = xs
  val (a,b,c,d) = int4_sort_nr(x1,x2,x3,x4)
  val (e,f,g,h) = int4_sort_nr (b,c,d,x5)
  val largest = h
  val second = g
  val third = f
  val (i,j) = int2_sort_nr(a,e)
  val smallest = i
  val fourth = j

in
  (smallest,fourth,third,second,largest)
end

val test1:int5 = (2,1,1,3,9)
val test2:int5 = (0,8,2,4,6)
val test3:int5 = (1,1,1,1,1)
val test4:int5 = (9,9,2,2,12)
val myans1 = int5_sort_nr(test1)
val myans2 = int5_sort_nr(test2)
val myans3 = int5_sort_nr(test3)
val myans4 = int5_sort_nr(test4)

(*
below are the test output 

Poly/ML 5.9 Release
> use "localTestForInt5";
type int2 = int * int
val int2_sort_nr = fn: int2 -> int * int
type int3 = int * int * int
val int3_sort_nr = fn: int3 -> int * int * int
type int4 = int * int * int * int
val int4_sort_nr = fn: int4 -> int * int * int * int
type int5 = int * int * int * int * int
val int5_sort_nr = fn: int5 -> int * int * int * int * int
val myans1 = (1, 1, 2, 3, 9): int * int * int * int * int
val myans2 = (0, 2, 4, 6, 8): int * int * int * int * int
val myans3 = (1, 1, 1, 1, 1): int * int * int * int * int
val myans4 = (2, 2, 9, 9, 12): int * int * int * int * int
val test1 = (2, 1, 1, 3, 9): int5
val test2 = (0, 8, 2, 4, 6): int5
val test3 = (1, 1, 1, 1, 1): int5
val test4 = (9, 9, 2, 2, 12): int5
val it = (): unit
)



