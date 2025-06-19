def contains_nearby_duplicate(nums, k)

    nums.each_with_index do |num, ind|
        (ind + 1).upto([ind + k, nums.size - 1].min) do |j|
          return true if nums[check] == num
        end    
    end
    false
end