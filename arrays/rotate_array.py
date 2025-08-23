from typing import List

# @param {List[int]} nums
# @param {int} k
# @return {None} Do not return anything, modify nums in-place instead.
def rotate(nums: List[int], k: int) -> None:
    for _ in range(k):
        last = nums.pop()
        nums.insert(0, last)