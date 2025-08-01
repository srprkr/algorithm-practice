class Solution:
    def permute(self, nums: List[int]) -> List[List[int]]:
        if len(nums) == 1:
            return [nums]

        res = []

        for i in range len(nums):
            num = nums[i]

            remaining = nums[:i] + nums[i + 1:]

            for perm in self.permute(remaining):
                res.append([num] + perm)

        return res
