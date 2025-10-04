def minimum_sum_subarray(nums, l, r)
    n = nums.size
    ans = Float::INFINITY

    (l..r).each do |window_size|
        next if window_size > n

        window_sum = nums[0, window_size].sum
        ans = [ans, window_sum].min if window_sum > 0

        (window_size...n).each do |i|
            window_sum +=  nums[i] - nums[i - window_size]
            ans = [ans, window_sum].min if window_sum > 0
        end
    end

    ans == Float::INFINITY ? -1 : ans
end