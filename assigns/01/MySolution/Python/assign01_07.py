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

    def merge(ys,zs):
        if mylist_nilq(ys):
            return zs
        else:
            y1 = ys.get_cons1()
            ys = ys.get_cons2()
            if mylist_nilq(zs):
                return mylist_cons(y1,ys)
            else:
                z1 = zs.get_cons1()
                zs = zs.get_cons2()
                if y1<=z1:
                    return mylist_cons(y1,merge(ys, mylist_cons(z1,zs)))
                else:
                    return mylist_cons(z1,merge(mylist_cons(y1,ys),zs))
            
    if mylist_nilq(xs):
            return mylist_nil()
    else:
        x1 = xs.get_cons1()
        xs = xs.get_cons2()
        if mylist_nilq(xs):
    
            return mylist_cons(x1, mylist_nil())
        else:
            x2= xs.get_cons1()
            xs = xs.get_cons2()
            ys,zs = split(xs)

            
            return  merge(mylist_mergesort(mylist_cons(x1,ys)),mylist_mergesort(mylist_cons(x2,zs)))
        
    