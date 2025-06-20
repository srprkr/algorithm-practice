def min_sub_array_len(target, nums)
  return 0 if nums.empty?
  
  left = 0
  current_sum = 0
  min_length = Float::INFINITY

  nums.each_with_index do |num, right|
    current_sum += num
  
    while current_sum >= target
      min_length = [min_length, right - left + 1].min
      current_sum -= nums[left]
      left += 1
    end
  end

  min_length == Float::INFINITY ? 0 : min_length
end