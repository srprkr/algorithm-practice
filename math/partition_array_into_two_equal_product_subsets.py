class Solution:
    def checkEqualPartitions(self, nums: List[int], target: int) -> bool:
        product, length = 1, 0
        for num in nums:
            product *= num
            length += 1

        if product != target ** 2:
            return False

        def func(total, index):
            if total == target:
                return True
            if total > target or index == length:
                return False
            return func(total, index + 1) or func(total * nums[index], index + 1)

        return func(1, 0)