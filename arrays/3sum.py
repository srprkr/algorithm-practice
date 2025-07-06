class Solution:
    def threeSum(self, nums: List[int]) -> List[List[int]]:
        result = []
        n = len(nums)
        for i in range(n):
            for j in range(n):
                if i == j:
                    continue
                for k in range(n):
                    if i == k or j == k:
                        continue
                    triplet = [nums[i], nums[j], nums[k]]
                    if sum(sorted(triplet)) == 0:
                        result.append(tuple(sorted(triplet)))
        # Remove duplicates by converting to set, then back to list of lists
        return [list(t) for t in set(result)]