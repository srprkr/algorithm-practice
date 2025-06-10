def sort_array(nums)
    n = nums.length
    return nums if n <= 1
    
    # Optimize by tracking both min and max in each pass
    left = 0
    right = n - 1
    
    while left < right
        min_idx = left
        max_idx = left
        
        # Find both min and max in one pass
        (left + 1..right).each do |i|
            if nums[i] < nums[min_idx]
                min_idx = i
            elsif nums[i] > nums[max_idx]
                max_idx = i
            end
        end
        
        # Handle case where max is at left
        if max_idx == left
            max_idx = min_idx
        end
        
        # Swap minimum to front
        nums[left], nums[min_idx] = nums[min_idx], nums[left]
        
        # Swap maximum to end
        nums[right], nums[max_idx] = nums[max_idx], nums[right]
        
        left += 1
        right -= 1
    end
    
    nums
end