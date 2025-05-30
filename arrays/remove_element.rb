def remove_element(nums, val)
    removed = nums.select { |num| num == val}
    return nums - removed
end