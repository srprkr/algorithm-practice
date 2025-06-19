def contains_nearby_duplicate(nums, k)

  seen = {}
  nums.each_with_index do |num, i|
    if seen.key?(num) && i - seen[num] <= k
      return true
    end

    seen[num] = i
  end
  false
end