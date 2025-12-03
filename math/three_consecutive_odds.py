class Solution:
    def threeConsecutiveOdds(self, arr: List[int]) -> bool:
        ct = 0
        for n in arr:
            if n % 2 == 0:
                ct = 0
            else:
                ct += 1
            if ct == 3:
                return True
        return False