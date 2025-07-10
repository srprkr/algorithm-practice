def search_range(nums, target)
    return [-1, -1] if nums.nil? || nums.empty?

    [binary_search(nums, target), binary_search(nums, target, false)]
end

def binary_search(nums, target, low = true)
    left, right = 0, nums.size - 1

    index = -1

    while left <= right
        mid = left + ((right - left) / 2)
        
        if nums[mid] > target
            right = mid - 1

        elsif nums[mid] < target
            left = mid + 1
        
        else
            index = mid

            if low
                right = mid - 1
            else
                left = mid + 1
            end
        end
    end

    index
end