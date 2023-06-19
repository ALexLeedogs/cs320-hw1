####################################################
#!/usr/bin/env python3
####################################################
import sys
sys.path.append('./../../../../mypylib')
from mypylib_cls import *
####################################################
#
# HX-2023-06-12: 10 points
# Please *translate* into Python the SML solution
# to word_neighbors (which is the one for Assign03-02)
def string_implode(ss):
    return foreach_to_foldleft(fnlist_foreach)(
        ss, "", lambda r, s: r + s
    )
    
    
def fnlist_tabulate(n, f):
    return fnlist_reverse(
        int1_foldleft(n, fnlist_nil(), lambda xs, i: fnlist_cons(f(i), xs))
    )


def string_tabulate(n, f):
    return string_implode(fnlist_tabulate(n, f))



def word_neighbors(word):
    AB = "abcdefghijklmnopqrstuvwxyz"

    len_word = len(word)

    def n_each(i):
        return fnlist_concat(
                string_imap_fnlist(
                    AB, 
                    lambda _, ch_new: fnlist_sing(
                        string_tabulate(len_word, lambda k: ch_new if k == i else word[k])
                    ) if word[i] != ch_new else fnlist_nil()
                )
            )

    raw = fnlist_concat(fnlist_tabulate(len_word, n_each))

    return pylist_fnlistize(fnlist_filter_pylist(fnlist_make_pylist(raw), lambda s: s != word))
