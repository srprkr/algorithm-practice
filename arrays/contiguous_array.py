class Solution:
    def findMaxLength(self, nums: List[int]) -> int:
        total_sum = 0
        max_length = 0
        sum_map = {}
        
        for i, num in enumerate(nums):
            total_sum += -1 if num == 0 else 1
            
            if total_sum == 0:
                max_length = i + 1
            elif total_sum in sum_map:
                max_length = max(max_length, i - sum_map[total_sum])
            else:
                sum_map[total_sum] = i
        
        return max_length