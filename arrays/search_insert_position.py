class Solution:
    def searchInsert(self, nums: List[int], target: int) -> int:
    
        for i, num in enumerate(nums):
            # if number is equal to or greater than target
            if num >= target:
                return i
            
        return len(nums)
