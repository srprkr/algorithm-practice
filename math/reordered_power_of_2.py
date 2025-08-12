class Solution:
    def reorderedPowerOf2(self, n: int) -> bool:
        chars = sorted(str(n))
        max_digits = len(str(n))
        powers_of_two = []

        i = 0
        while (1 << i) < 10 ** max_digits:
          powers_of_two.append(sorted(str(1 << i)))
          i += 1

        return any(num == chars for num in powers_of_two)
