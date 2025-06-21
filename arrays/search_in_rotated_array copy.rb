def search(nums, target)
  left = 0
  right = nums.size - 1

  while left <= right
    mid = (left + right) / 2
    return mid if nums[mid] == target

    # Left half is sorted
    if nums[left] <= nums[mid]
      if nums[left] <= target && target < nums[mid]
        right = mid - 1
      else
        left = mid + 1
      end
    # Right half is sorted
    else
      if nums[mid] < target && target <= nums[right]
        left = mid + 1
      else
        right = mid - 1
      end
    end
  end

  -1
end