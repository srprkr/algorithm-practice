# bubble sort

class Solution:
    def sortArray(self, nums: List[int]) -> List[int]:
        n = len(nums)
        for i in range(n):
            min_index = i
            for j in range(0, n - i - 1):
                if nums[j] > nums[j + 1]:
                    if nums[j] > nums[j + 1]:
                        nums[j], nums[j + 1] = nums[j + 1], nums[j]

        return nums