class Solution:
    def numberOfWays(self, n: int, x: int) -> int:
        mod = 10 ** 9 + 7

        data = {}

        def dp(remaining, current):
            tuple = (remaining, current)
            if tuple in data:
              return data[tuple]

            power = current ** x
            if remaining == 0:
                return 1
            if power > remaining:
                return 0

            take = dp(remaining - power, current + 1)
            skip = dp(remaining, current + 1)

            data[tuple] = (take + skip) % mod
            return data[tuple]

        return dp(n, 1)