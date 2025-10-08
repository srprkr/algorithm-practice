# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
    return nums.max if nums.size < 3

    nums.sort.reverse.uniq[2]
end