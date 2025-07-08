class Solution:
    def jump(self, nums: List[int]) -> int:
        # @param {Integer[]} nums
        current_jump = 0
        last_jump = 0
        step = 0
        n = len(nums) - 1

        for i in range(n):
            current_jump = max([current_jump, i + nums[i]])
            if i == last_jump:
                step += 1
                last_jump = current_jump

        return step