class Solution:
    def findLHS(self, nums: List[int]) -> int:
        if not nums:
            return 0
            
        nums.sort()
        left = 0
        max_length = 0
        
        for right in range(1, len(nums)):
            # Advance left pointer while difference is too large
            while left < right and nums[right] - nums[left] > 1:
                left += 1
                
            # Check if we found a harmonious subsequence
            if nums[right] - nums[left] == 1:
                max_length = max(max_length, right - left + 1)
                
        return max_length