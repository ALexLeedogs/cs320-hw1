####################################################
import sys
sys.path.append('./../..')
from assign01_lib import *
####################################################
print("[import ./../../assign01_lib.py] is done!")
####################################################
#
# Please implement (10 points)
# mylist_quicksort (see list_quicksort in assign01-lib.sml)
#
####################################################
def mylist_quicksort(xs):
    def qsort(xs):
        if mylist_nilq(xs):
            return mylist_nil()
        else:
            x1 = xs.get_cons1()
            xs = xs.get_cons2()
            ys,zs = qpart(xs,x1)
            ys = qsort(ys)
            zs = qsort(zs)

            return mylist_append(ys,mylist_cons(x1,zs))
        
    def qpart(xs,p0):
        if mylist_nilq(xs):
            return mylist_nil(), mylist_nil()
        else:
            x1 = xs.get_cons1()
            xs = xs.get_cons2()
            ys,zs = qpart(xs,p0)
            if x1 <= p0:
                return mylist_cons(x1, ys), zs
            else:
                return ys, mylist_cons(x1, zs)
    return qsort(xs)
    
def mylist_append(list1,list2):
      if mylist_nilq(list1):
        return list2
      else:
        return mylist_cons(list1.get_cons1(), mylist_append(list1.get_cons2(), list2))

