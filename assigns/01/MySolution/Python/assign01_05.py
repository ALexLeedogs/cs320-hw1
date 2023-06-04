####################################################
import sys
sys.path.append('./../..')
from assign01_lib import *
####################################################
print("[import ./../assign01_lib.py] is done!")
####################################################
#
# Please implement (20 points)
# mylist_append (see list_append in assign01-lib.sml)
# mylist_rappend (see list_rappend in assign01-lib.sml)
# mylist_reverse (see list_reverse in assign01-lib.sml)
#
####################################################
def mylist_append(list1,list2):
      if mylist_nilq(list1):
        return list2
      else return mylist_cons(list1.get_cons1(), mylist_append(list1.get_cons2(), list2))



def mylist_rappend(list1,list2):
    if len(list1) == 0:
        return list2
    else:
        return mylist_rappend(list1[1:0],[list1[0]]+list2)
    

def mylist_reverse(list1):
    return mylist_rappend(list1,[])


