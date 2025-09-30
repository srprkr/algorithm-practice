# @param {Integer[]} nums
# @return {Integer}
def subarray_sum(nums)
    sum = 0
    
    nums.each_with_index do |num, index|
        start = [0,(index - (nums[index]))].max
        sum += nums[start..index].sum
    end
    return sum
end