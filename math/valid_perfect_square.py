class Solution:
    def isPerfectSquare(self, num: int) -> bool:
        for n in range(num):
            if n * n == num:
                return True
            else:
                continue

        return False
