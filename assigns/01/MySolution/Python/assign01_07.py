####################################################
import sys
sys.path.append('./../..')
from assign01_lib import *
####################################################
print("[import ./../../assign01_lib.py] is done!")
####################################################
#
# Please implement (20 points)
# mylist_mergesort (see list_mergesort in assign01-lib.sml)
#
####################################################
def mylist_append(list1,list2):
      if mylist_nilq(list1):
        return list2
      else:
        return mylist_cons(list1.get_cons1(), mylist_append(list1.get_cons2(), list2))

def mylist_mergesort(xs):
    def split(xs):
        if mylist_nilq(xs):
            return mylist_nil(), mylist_nil()
        else:
            x1 = xs.get_cons1()
            xs = xs.get_cons2()
            if mylist_nilq(xs):
                return mylist_cons(x1, mylist_nil()), mylist_nil()
            else:
                x2 = xs.get_cons1()
                xs = xs.get_cons2()
                ys,zs = split(xs)
                return mylist_cons(x1,ys),mylist_cons(x2, zs)

