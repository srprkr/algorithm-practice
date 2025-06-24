class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        once, twice = 0, 0
        for num in nums:
            once = (once ^ num) & ~twice
            twice = (twice ^ num) & ~once

        return once