class Solution:
    def fib(self, n: int) -> int:
        if n == 0 or n == 1:
            return n
        # build fibonacci sequence
        fib = []
        for i in range(n + 1):
            if i == 0 or i == 1:
                fib.append(i)
            else:
                fib.append( fib[i - 2] + fib[i - 1] )
        # add last two entries of fib (the two before n)
        return fib[n]