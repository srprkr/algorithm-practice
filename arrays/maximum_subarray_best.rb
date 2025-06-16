# Kidane's Algorithm - if a subarray's sum is negative start fresh with next element

def max_sub_array(nums)
    max_sum = nums[0]
    current_sum = nums[0]
    
    (1...nums.size).each do |i|
        current_sum = [nums[i], current_sum + nums[i]].max
        max_sum = [max_sum, current_sum].max
    end

    max_sum
end
