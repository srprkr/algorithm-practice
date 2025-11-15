class Solution:
    def threeSumClosest(self, nums: List[int], target: int) -> int:
        nums.sort()
        n = len(nums)
        sum_closest = min_diff = float('inf')

        for mid_idx in range(1, n - 1):
            mid = nums[mid_idx]
            left = 0
            right = n - 1

            while left < mid_idx and mid_idx < right:
                sum_val = nums[left] + mid + nums[right]

                if sum_val == target:
                    return target

                if sum_val > target:
                    if sum_val - target < min_diff:
                        min_diff = sum_val - target
                        sum_closest = sum_val
                    right -= 1
                else:
                    if target - sum_val < min_diff:
                        min_diff = target - sum_val
                        sum_closest = sum_val
                    left += 1

        return sum_closest