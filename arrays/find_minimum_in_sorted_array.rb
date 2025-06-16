def find_min(nums)
    return nums[0] if nums.size == 1

    left = 0
    right = nums.size - 1

    while left <= right
        mid = (left + right) / 2
        
        return nums[mid] if mid > 0 && nums[mid] < nums[mid - 1]
        return nums[mid + 1] if mid < nums.size - 1 && nums[mid] > nums[mid + 1]

        
        nums[mid] > nums[0] ? left = mid + 1 : right = mid - 1
                
    end

    nums[0]
end