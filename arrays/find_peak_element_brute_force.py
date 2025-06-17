class Solution:
    def findPeakElement(self, nums: List[int]) -> int:def find_peak_element(nums)
        if len(nums) == 1:
            return 0

        for i in range(len(nums)):
            if i == 0 and nums[i] > nums[i + 1]:
                return i

            if i == len(nums) - 1 and nums[i] > nums[i - 1]:
                return i

            if (i > 0 and i < len(nums) - 1 and nums[i] > nums[i - 1] and nums[i] > nums[i + 1]):
                return i


        return 0
