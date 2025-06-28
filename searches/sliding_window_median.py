def max_sliding_window(nums, k)
    return [] if nums.empty? || k == 0
    result = []


    (0..nums.size - k).each do |left|
        window = nums[left, k]
        result << window.max
    end
    
    result
end
