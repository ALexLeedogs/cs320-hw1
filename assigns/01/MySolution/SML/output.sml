(***

output for 01
val @ = fn: 'a list * 'a list -> 'a list
exception ConsMatch320
exception ERROR320 of string optn
exception ListSubscript320
exception NotImplemented320
exception OptnSubscript320
val abs_int = fn: int -> int
val assert320 = fn: bool -> unit
val assert320_some = fn: bool * string -> unit
val char_of_digit = fn: int -> char
val hd = fn: 'a list -> 'a
val int_max = fn: int * int -> int
val int_min = fn: int * int -> int
val list_append = fn: 'a list * 'a list -> 'a list
val list_extend = fn: 'a list * 'a -> 'a list
val list_fromto = fn: int * int -> int list
val list_head = fn: 'a list -> 'a
val list_headopt = fn: 'a list -> 'a optn
val list_is_cons = fn: 'a list -> bool
val list_is_nil = fn: 'a list -> bool
val list_last = fn: 'a list -> 'a
val list_length = fn: 'a list -> int
val list_rappend = fn: 'a list * 'a list -> 'a list
val list_reverse = fn: 'a list -> 'a list
val list_tail = fn: 'a list -> 'a list
val list_tailopt = fn: 'a list -> 'a list optn
val list_uncons = fn: 'a list -> 'a * 'a list
val list_unnil = fn: 'a list -> unit
eqtype 'a optn
val optn_is_none = fn: 'a optn -> bool
val optn_is_some = fn: 'a optn -> bool
val optn_unnone = fn: 'a optn -> unit
val optn_unsome = fn: 'a optn -> 'a
val pow_int_int = fn: int * int -> int
val print_bool = fn: bool -> unit
val print_char = fn: char -> unit
val print_int = fn: int -> unit
val print_newline = fn: unit -> unit
val print_string = fn: string -> unit
val println = fn: string -> unit
val println_string = fn: string -> unit
val tl = fn: 'a list -> 'a list
val it = (): unit
exception NotImplemented320
exception XlistConsMatch
exception XlistSubscript
val list_append = fn: 'a list * 'a list -> 'a list
val list_mergesort = fn: int list -> int list
val list_of_xlist = fn: 'a xlist -> 'a list
val list_quicksort = fn: int list -> int list
val list_rappend = fn: 'a list * 'a list -> 'a list
val list_reverse = fn: 'a list -> 'a list
datatype 'a xlist =
    xlist_append of 'a xlist * 'a xlist
  | xlist_cons of 'a * 'a xlist
  | xlist_nil
  | xlist_reverse of 'a xlist
  | xlist_snoc of 'a xlist * 'a
val it = (): unit
val xlist_size = fn: 'a xlist -> int
val it = (): unit
Assign01-01-test passed!
val list_size = fn: 'a list -> int
val xs =
   xlist_append
    (xlist_reverse
      (
         xlist_snoc
          (xlist_cons
            (1, xlist_append (xlist_reverse ..., xlist_reverse ...)), 2)
         ),
     xlist_reverse
      (
         xlist_snoc
          (xlist_cons
            (1, xlist_append (xlist_reverse ..., xlist_reverse ...)), 2)
         )): int xlist
val it = (): unit

)


(***
 use "assign01-02-test.sml";
val @ = fn: 'a list * 'a list -> 'a list
exception ConsMatch320
exception ERROR320 of string optn
exception ListSubscript320
exception NotImplemented320
exception OptnSubscript320
val abs_int = fn: int -> int
val assert320 = fn: bool -> unit
val assert320_some = fn: bool * string -> unit
val char_of_digit = fn: int -> char
val hd = fn: 'a list -> 'a
val int_max = fn: int * int -> int
val int_min = fn: int * int -> int
val list_append = fn: 'a list * 'a list -> 'a list
val list_extend = fn: 'a list * 'a -> 'a list
val list_fromto = fn: int * int -> int list
val list_head = fn: 'a list -> 'a
val list_headopt = fn: 'a list -> 'a optn
val list_is_cons = fn: 'a list -> bool
val list_is_nil = fn: 'a list -> bool
val list_last = fn: 'a list -> 'a
val list_length = fn: 'a list -> int
val list_rappend = fn: 'a list * 'a list -> 'a list
val list_reverse = fn: 'a list -> 'a list
val list_tail = fn: 'a list -> 'a list
val list_tailopt = fn: 'a list -> 'a list optn
val list_uncons = fn: 'a list -> 'a * 'a list
val list_unnil = fn: 'a list -> unit
eqtype 'a optn
val optn_is_none = fn: 'a optn -> bool
val optn_is_some = fn: 'a optn -> bool
val optn_unnone = fn: 'a optn -> unit
val optn_unsome = fn: 'a optn -> 'a
val pow_int_int = fn: int * int -> int
val print_bool = fn: bool -> unit
val print_char = fn: char -> unit
val print_int = fn: int -> unit
val print_newline = fn: unit -> unit
val print_string = fn: string -> unit
val println = fn: string -> unit
val println_string = fn: string -> unit
val tl = fn: 'a list -> 'a list
val it = (): unit
exception NotImplemented320
exception XlistConsMatch
exception XlistSubscript
val list_append = fn: 'a list * 'a list -> 'a list
val list_mergesort = fn: int list -> int list
val list_of_xlist = fn: 'a xlist -> 'a list
val list_quicksort = fn: int list -> int list
val list_rappend = fn: 'a list * 'a list -> 'a list
val list_reverse = fn: 'a list -> 'a list
datatype 'a xlist =
    xlist_append of 'a xlist * 'a xlist
  | xlist_cons of 'a * 'a xlist
  | xlist_nil
  | xlist_reverse of 'a xlist
  | xlist_snoc of 'a xlist * 'a
val it = (): unit
exception NotImplemented320
exception XlistConsMatch
exception XlistSubscript
val list_append = fn: 'a list * 'a list -> 'a list
val list_mergesort = fn: int list -> int list
val list_of_xlist = fn: 'a xlist -> 'a list
val list_quicksort = fn: int list -> int list
val list_rappend = fn: 'a list * 'a list -> 'a list
val list_reverse = fn: 'a list -> 'a list
datatype 'a xlist =
    xlist_append of 'a xlist * 'a xlist
  | xlist_cons of 'a * 'a xlist
  | xlist_nil
  | xlist_reverse of 'a xlist
  | xlist_snoc of 'a xlist * 'a
val it = (): unit
val xlist_size = fn: 'a xlist -> int
val it = (): unit
val xlist_sub = fn: 'a xlist * int -> 'a
val it = (): unit
Assign01-02-test passed!
val list_size = fn: 'a list -> int
val xs =
   xlist_append
    (xlist_reverse
      (
         xlist_snoc
          (xlist_cons
            (1, xlist_append (xlist_reverse ..., xlist_reverse ...)), 2)
         ),
     xlist_reverse
      (
         xlist_snoc
          (xlist_cons
            (1, xlist_append (xlist_reverse ..., xlist_reverse ...)), 2)
         )): int xlist
val it = (): unit

)


(***_

output for 03

use "assign01-03-test.sml";
val @ = fn: 'a list * 'a list -> 'a list
exception ConsMatch320
exception ERROR320 of string optn
exception ListSubscript320
exception NotImplemented320
exception OptnSubscript320
val abs_int = fn: int -> int
val assert320 = fn: bool -> unit
val assert320_some = fn: bool * string -> unit
val char_of_digit = fn: int -> char
val hd = fn: 'a list -> 'a
val int_max = fn: int * int -> int
val int_min = fn: int * int -> int
val list_append = fn: 'a list * 'a list -> 'a list
val list_extend = fn: 'a list * 'a -> 'a list
val list_fromto = fn: int * int -> int list
val list_head = fn: 'a list -> 'a
val list_headopt = fn: 'a list -> 'a optn
val list_is_cons = fn: 'a list -> bool
val list_is_nil = fn: 'a list -> bool
val list_last = fn: 'a list -> 'a
val list_length = fn: 'a list -> int
val list_rappend = fn: 'a list * 'a list -> 'a list
val list_reverse = fn: 'a list -> 'a list
val list_tail = fn: 'a list -> 'a list
val list_tailopt = fn: 'a list -> 'a list optn
val list_uncons = fn: 'a list -> 'a * 'a list
val list_unnil = fn: 'a list -> unit
eqtype 'a optn
val optn_is_none = fn: 'a optn -> bool
val optn_is_some = fn: 'a optn -> bool
val optn_unnone = fn: 'a optn -> unit
val optn_unsome = fn: 'a optn -> 'a
val pow_int_int = fn: int * int -> int
val print_bool = fn: bool -> unit
val print_char = fn: char -> unit
val print_int = fn: int -> unit
val print_newline = fn: unit -> unit
val print_string = fn: string -> unit
val println = fn: string -> unit
val println_string = fn: string -> unit
val tl = fn: 'a list -> 'a list
val it = (): unit
exception NotImplemented320
exception XlistConsMatch
exception XlistSubscript
val list_append = fn: 'a list * 'a list -> 'a list
val list_mergesort = fn: int list -> int list
val list_of_xlist = fn: 'a xlist -> 'a list
val list_quicksort = fn: int list -> int list
val list_rappend = fn: 'a list * 'a list -> 'a list
val list_reverse = fn: 'a list -> 'a list
datatype 'a xlist =
    xlist_append of 'a xlist * 'a xlist
  | xlist_cons of 'a * 'a xlist
  | xlist_nil
  | xlist_reverse of 'a xlist
  | xlist_snoc of 'a xlist * 'a
val it = (): unit
val test1 = [2, 3, 2, 3, 2, 3, 2, 3]: int list
val test2 = [2, 3, 2, 3, 2, 3, 2, 3]: int list
val xlist_remove_reverse = fn: 'a xlist -> 'a xlist
val xs1 =
   xlist_reverse
    (
       xlist_append
        (xlist_reverse
          (
             xlist_append
              (xlist_snoc (xlist_snoc (..., 2), 3),
               xlist_snoc (xlist_snoc (..., 2), 3))
             ),
         xlist_reverse
          (
             xlist_append
              (xlist_snoc (xlist_snoc (..., 2), 3),
               xlist_snoc (xlist_snoc (..., 2), 3))
             ))
       ): int xlist
val ys1 =
   xlist_append
    (xlist_append
      (xlist_snoc (xlist_snoc (xlist_nil, 2), 3),
       xlist_snoc (xlist_snoc (xlist_nil, 2), 3)),
     xlist_append
      (xlist_snoc (xlist_snoc (xlist_nil, 2), 3),
       xlist_snoc (xlist_snoc (xlist_nil, 2), 3))): int xlist
val it = (): unit
Assign01-03-test passed!
val list_size = fn: 'a list -> int
val nappend = fn: 'a xlist -> int
val nreverse = fn: 'a xlist -> int
val xs =
   xlist_append
    (xlist_reverse
      (
         xlist_snoc
          (xlist_cons
            (1, xlist_append (xlist_reverse ..., xlist_reverse ...)), 2)
         ),
     xlist_reverse
      (
         xlist_snoc
          (xlist_cons
            (1, xlist_append (xlist_reverse ..., xlist_reverse ...)), 2)
         )): int xlist
val ys =
   xlist_append
    (xlist_cons
      (2,
       xlist_snoc
        (xlist_append (xlist_snoc (..., 2), xlist_snoc (..., 2)), 1)),
     xlist_cons
      (2,
       xlist_snoc
        (xlist_append (xlist_snoc (..., 2), xlist_snoc (..., 2)), 1))):
   int xlist
val it = (): unit
> 


output for 04


use "assign01-04-test.sml";
exception NotImplemented320
exception XlistConsMatch
exception XlistSubscript
val list_append = fn: 'a list * 'a list -> 'a list
val list_mergesort = fn: int list -> int list
val list_of_xlist = fn: 'a xlist -> 'a list
val list_quicksort = fn: int list -> int list
val list_rappend = fn: 'a list * 'a list -> 'a list
val list_reverse = fn: 'a list -> 'a list
datatype 'a xlist =
    xlist_append of 'a xlist * 'a xlist
  | xlist_cons of 'a * 'a xlist
  | xlist_nil
  | xlist_reverse of 'a xlist
  | xlist_snoc of 'a xlist * 'a
val it = (): unit
val str2int_opt = fn: string -> int option
val it = (): unit
Assign01-04-test passed!
val it = (): unit
> 