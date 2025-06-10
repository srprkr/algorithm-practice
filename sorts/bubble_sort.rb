def sort_array(nums)
    n = nums.size
    return nums if n <= 1
    
    n.times do |i|
        (0...(n - i - 1)).each do |j|
            if nums[j] > nums[j + 1]
                nums[j], nums[j + 1] = nums[j + 1], nums[j]
            end
        end
    end
    
    nums
end