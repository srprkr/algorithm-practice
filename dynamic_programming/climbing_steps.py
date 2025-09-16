class Solution:
    def climbStairs(self, n: int) -> int:
        def climb(n: int, memo: dict = {}) -> int:
            if n == 0:
                return 1

            if n < 0:
                return 0

            if n in memo:
                return memo[n]

            memo[n] = climb(n - 1, memo) + climb(n - 2, memo)
            return memo[n]

        return climb(n)