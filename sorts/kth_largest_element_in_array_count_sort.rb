def find_kth_largest(nums, k)
  return nil if nums.empty? || k <= 0 || k > nums.size

  min_value = nums.min
  max_value = nums.max

  count = Array.new(max_value - min_value + 1, 0)

  nums.each do |num|
    count[num - min_value] += 1
  end

  remaining = k
  (count.size - 1).downto(0) do |i|
    remaining -= count[i]

    if remaining <= 0
        return i + min_value
    end
  end
end
 
 