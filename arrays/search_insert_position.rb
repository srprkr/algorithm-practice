def search_insert(nums, target)
    
    nums.each_with_index do |num, i|
        # if number is target
        return i if num >= target
    end

    return nums.size
end