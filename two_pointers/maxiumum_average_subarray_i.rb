# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
    left = 0
    right = k - 1
    curr_sum = nums[left..right].sum
    max_sum = curr_sum
    
    while right < nums.length - 1
        curr_sum -= nums[left]
        left += 1
        right += 1
        curr_sum += nums[right]
        
        max_sum = [max_sum, curr_sum].max
    end
    
    max_sum.to_f / k
end