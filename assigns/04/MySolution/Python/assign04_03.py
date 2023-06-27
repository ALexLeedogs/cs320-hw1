####################################################
#!/usr/bin/env python3
####################################################
"""
HX-2023-06-19: 10 points
You are required to implement the following function
generator_merge2 WITHOUT using streams. A solution that
uses streams is disqualified.
"""
def generator_merge2(gen1, gen2, lte3):
    def helper(gen1, gen2, val1, val2, init_val1, init_val2):
        if not init_val1:
            try:
                val1 = next(gen1)
                init_val1 = True
            except StopIteration:
                val1 = None
        
        if not init_val2:
            try:
                val2 = next(gen2)
                init_val2 = True
            except StopIteration:
                val2 = None
        
        if val1 is None and val2 is None:
            return
        
        if val2 is None or (val1 is not None and lte3(val1, val2)):
            yield val1
            yield from helper(gen1, gen2, None, val2, False, init_val2)
        else:
            yield val2
            yield from helper(gen1, gen2, val1, None, init_val1, False)
            
    return helper(gen1, gen2, None, None, False, False)


# Test cases should be added here to test the function
