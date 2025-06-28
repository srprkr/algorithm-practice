def median_sliding_window(nums, k)
    
    medians = []
    left = 0
    right = (left + k)

    while right < nums.size
        # find window nums[first, last]
        window = nums[left, k]
        puts "window #{window}"
        # sum window
        total = window.sum
        
        # get mean from window
        # add to medians result
        medians << (total / (k * 1.00000))


        # puts "right: #{right}"
        # puts "total: #{total}"
        # puts medians
        
        left += 1
        right += 1
        total = 0

        # return medians if right == nums.size
    end

        puts medians

    medians
end