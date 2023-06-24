fun count_occurrences (x, []) = 0
  | count_occurrences (x, y::ys) =
    if x = y then 1 + count_occurrences (x, ys)
    else count_occurrences (x, ys)



val q = print (Int.toString (count_occurrences (1, [1, 2, 3, 1, 1, 4, 5, 1])))

fun replicate (n, x) =
    if n <= 0 then []
    else x :: replicate (n-1, x)

val a = replicate (3, 4)
val myans1 = a