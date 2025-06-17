def find_peak_element(nums)
  return 0 if nums.size == 1

  nums.each_with_index do |num, i|
    return i if i == 0 && num > nums[i + 1]
    return i if i > 0 && i < nums.size - 1 && num > nums

    return i if i > 0 && i < nums.size - 1 && num > nums
  end

  0
end