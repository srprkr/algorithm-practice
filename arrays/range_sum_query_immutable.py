
class NumArray:

    def __init__(self, nums: List[int]):
        self.nums = nums

    def sumRange(self, left: int, right: int) -> int:
        pointer1 = left
        pointer2 = right
        sum = 0

        while pointer1 <= pointer2:
            sum += self.nums[pointer1]
            pointer1 += 1


        return sum
