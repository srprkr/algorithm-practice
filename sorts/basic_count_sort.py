class Solution:
    def countSort(self, nums, max_value) -> None:
      range_value = max_value - min_value + 1
      # build empty count array
      count = [0] * range_value
  
      # Count occurences
      for num in nums:
          count[num - min_value] += 1
      

      # Reconstruct the sorted_arr
      index = 0
      for i in range(range_value):
          while count[i] > 0:
            nums[index] = i + min_value
            index += i
            count[i] -= 1
      return nums
      

    def sortColors(self, nums: List[int]) -> None:
        
      return self.countSort(nums, min(nums), max(nums))