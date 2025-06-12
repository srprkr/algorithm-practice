class Solution
  def quicksort(nums, left, right)
    if left < right
      # Find pivot index
      pi = partition(nums, left, right)
      quicksort(nums, left, pi)
      quicksort(nums, pi + 1, right)
    end
    nums
  end

  def partition(nums, left, right)
    # Choose middle element as pivot
    pivot = nums[(left + right) / 2]
    i = left - 1
    j = right + 1

    loop do
      loop do
        i += 1
        break if nums[i] >= pivot
      end

      loop do
        j -= 1
        break if nums[j] <= pivot
      end

      break if i >= j

      # Swap elements
      nums[i], nums[j] = nums[j], nums[i]
    end

    j
  end

  def sort_array(nums)
    return nums if nums.empty?
    quicksort(nums, 0, nums.length - 1)
  end
end