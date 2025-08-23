# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
    n = nums.size
    k %= n
    nums.reverse!
    nums[0...k] = nums[0...k].reverse
    nums[k..-1] = nums[k..-1].reverse