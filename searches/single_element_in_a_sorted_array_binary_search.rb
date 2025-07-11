def single_non_duplicate(nums)
    left  = 0
    right = len(nums) - 1

    while left < right
        mid = (left + right) // 2
        if mid % 2 == 1:
                mid -= 1

        if nums[mid] == nums[mid + 1]
            left = mid + 2
        else
            right = mid - 2
        end
    end

    nums[left]
end