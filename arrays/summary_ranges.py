class Solution:
    def summaryRanges(self, nums: List[int]) -> List[str]:
        if not nums:
            return []

        start = 0
        res = []

        for i in range(len(nums)):
            if i + 1 < len(nums) and nums[i + 1] == nums[i] + 1:
                continue

            if start == i:
                result.append(str(nums[i]))
            else:
                result.append(f"{nums[start]}->{nums[i]}")
            
            start = i + 1

        return res