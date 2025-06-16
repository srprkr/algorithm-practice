def search_insert(nums, target)
    
    nums.each_with_index do |num, i|
        # if number is target
        if num == target
            return i
        end

        # otherwise keep track until the number is higher
        if num > target
            # then insert above index (because the insert number would occupy current index)
            return i
        end
    end
    # if greater number not found, the last index should return
    return nums.size
end