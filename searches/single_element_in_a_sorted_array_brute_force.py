class Solution:
    def singleNonDuplicate(self, nums: List[int]) -> int:
        for num in nums:
            if nums.count(num) != 2:
                return num