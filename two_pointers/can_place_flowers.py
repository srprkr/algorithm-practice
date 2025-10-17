class Solution:
    def canPlaceFlowers(self, flowerbed: List[int], n: int) -> bool:
        zeroes = 0
        for f in [0] + flowerbed + [0]:
            if f == 0:
                zeroes += 1
            else:
                zeroes = 0

            if zeroes == 3:
                zeroes = 1
                n -= 1

            if n == 0:
                break

        return n == 0