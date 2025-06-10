def sort_array(nums)
    n = nums.size
    return nums if n <= 1

    (0..n - 1).each do |i|
      min_index = i

      (i + 1..n).each do |j|
        min_index = j if nums[j] < nums[min_index]
      end

      nums[i], nums[min_index] = nums[min_index], nums[i]
    end

    nums
end