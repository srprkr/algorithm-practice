class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        num_count = {}
        n = len(nums)

        for num in nums:
            num_count[num] = num_count.get(num, 0) + 1
            
        most_freq = max(num_count, key = num_count.get)
        return most_freq