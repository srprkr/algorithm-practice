def next_greater_element(nums1, nums2)
  result = []
  
  nums1.each do |n1|
    # Find the index of current number in nums2
    index = nums2.index(n1)
    found_greater = false
    
    # Look for next greater element to the right
    (index + 1).upto(nums2.length - 1) do |j|
      if nums2[j] > n1
        result.push(nums2[j])
        found_greater = true
        break
      end
    end
    
    # If no greater element found, push -1
    result.push(-1) unless found_greater
  end
  
  result
end