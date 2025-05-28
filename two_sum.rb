def two_sum(nums, target)
  seen = {}
  nums.each_with_index do |num, idx|
    complement = target - num
    if seen.key?(complement)
      return [seen[complement], idx]
    end
    seen[num] = idx
  end
end