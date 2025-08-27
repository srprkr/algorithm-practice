from typing import List

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        # Create array of [value, original_index] pairs
        indexed_nums = [[num, i] for i, num in enumerate(nums)]

        # Sort by values
        indexed_nums.sort(key=lambda x: x[0])

        pointer1 = 0
        pointer2 = len(indexed_nums) - 1

        while pointer1 < pointer2:
            current_sum = indexed_nums[pointer1][0] + indexed_nums[pointer2][0]

            if current_sum == target:
                # Return original indices
                return [indexed_nums[pointer1][1], indexed_nums[pointer2][1]]
            elif current_sum < target:
                pointer1 += 1
            else:
                pointer2 -= 1

        return []