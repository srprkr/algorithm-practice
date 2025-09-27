class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        slow = 0
        fast = 0

        while fast <= len(nums) - 1:
            if nums[fast] == 0:
                fast += 1
            else:
                nums[fast], nums[slow] = nums[slow], nums[fast]
                slow += 1
                fast += 1
        nums