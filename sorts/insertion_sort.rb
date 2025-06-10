def sort_array(nums)
    
    return nums if nums.size <= 1

    (1...nums.size).each do |i|
      key = nums[i]
      j = i - 1

      while j >= 0 && nums[j] > key
        nums[j + 1] = nums[j]
        j -= 1
      end

      nums[j + 1] = key
    end

    nums
end