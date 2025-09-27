# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    slow = 0
    fast = 0

    while fast <= nums.size - 1
        if nums[fast] == 0
            fast += 1
        else
            nums[fast], nums[slow] = nums[slow], nums[fast]
            slow += 1
            fast += 1
        end
    end
    nums
end