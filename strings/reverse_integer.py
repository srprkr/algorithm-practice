class Solution:
    def reverse(self, x: int) -> int:
        sign = -1 if x < 0 else 1

        bit_max = 2**31
        bit_min = -(2**31)

        rev = int(str(abs(x))[::-1]) * sign

        return rev if  bit_min <= rev <= (bit_max - 1) else 0