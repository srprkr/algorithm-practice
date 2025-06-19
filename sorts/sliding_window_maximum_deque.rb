def max_sliding_window(nums, k)
    return [] if nums.empty? || k == 0
    result = []
    deque = []

    nums.each_with_index do |num, i|
        deque.shift if !deque.empty? && deque[0] <= i - k

        deque.pop while !deque.empty? && nums[deque[-1]] < num
    
        deque << i

        result << nums[deque[0]] if i >= k - 1
    end
    
    result
end
