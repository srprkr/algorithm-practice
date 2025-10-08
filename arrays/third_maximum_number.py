class Solution:
    def thirdMax(self, nums: List[int]) -> int:
        if len(nums) < 3:
            return max(nums)
        
        return sorted(set(nums), reverse=True)[2]