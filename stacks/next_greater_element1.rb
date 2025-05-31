def next_greater_element(nums1, nums2)
    next_greater = {}
    stack = []
    # iterate the arrays, (nested because there's two)
    nums2.each do |num|
        while !stack.empty? && num > stack.last
        next_greater[stack.pop] = num
        end
        stack.push(num)
    end

    stack.each do |num|
        next_greater[num] = -1
    end
    
    nums1.map { |num| next_greater[num] || -1}
end