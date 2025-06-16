def top_k_frequent(nums, k)
    range_value = nums.max - nums.mins + 1
    count = Array.new(range_value, 0)

    nums.each do |num|
        count[num] += 1
    end

    nums.each do |i|
        count[i] += count[i - 1]
    end

    pairs = []
    count.each_with_index do |freq, num|
        pairs << [num, freq] if freq > 0
    end

    pairs.sort_by! { |pair| -pair[1] }.first(k).map(&:first)

end