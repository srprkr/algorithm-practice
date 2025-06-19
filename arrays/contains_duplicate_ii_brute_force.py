class Solution:
    def containsNearbyDuplicate(self, nums: List[int], k: int) -> bool:
        for i, num in enumerate(nums):

          for j in range(i + 1, min(i + k + 1, len(nums))):
            if nums[j] == num:
              return True
        
        return False