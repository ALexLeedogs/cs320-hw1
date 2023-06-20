####################################################
#!/usr/bin/env python3
####################################################
import sys
sys.path.append('./../../../../mypylib')
from mypylib_cls import *
####################################################
"""
//
HX-2023-06-12: 20 points
Solving the N-queen puzzle
Here is an implementation of the famous 8-queen puzzle:
https://ats-lang.sourceforge.net/DOCUMENT/INT2PROGINATS/HTML/x631.html
//
"""
####################################################

def solve_N_queen_puzzle(N):
    board = [-1] * N

    def test(board, col):
        for i in range(col):
            if (board[i] == board[col] or
                board[i] - i == board[col] - col or
                board[i] + i == board[col] + col):
                return False
        return True

    def take_action(board, col):
        if col == N:
            yield tuple(board)
        else:
            for i in range(1, N + 1):
                board[col] = i
                if test(board, col):
                    yield from take_action(board, col + 1)

    def transform(solutions):
        result = next(solutions, None)
        if result is not None:
            return strcon_cons(result, lambda: transform(solutions))
        else:
            return strcon_nil()

    return lambda: transform(take_action(board, 0))


