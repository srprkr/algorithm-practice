class Solution:
    def isHappy(self, n: int) -> bool:
        seen = set()

        while n != 1 and n not in seen:
            seen.add(n)

            total = sum(int(digit) ** 2 for digit in str(n))
            n = total

        return n == 1
    