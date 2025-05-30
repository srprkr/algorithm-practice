def remove_element_in_place(nums, val)
    nums.select! { |num| num != val}
    return nums.size
end