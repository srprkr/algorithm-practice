# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
    left = 0
    right = nums.size - 1
    result = []

    while left <= right
        mid = (left  + right) / 2
        if nums[left].abs > nums[right].abs
            result << nums[left] ** 2
            left += 1
        else
            result << nums[right] ** 2
            right -= 1
        end
    end

    result.reverse
end