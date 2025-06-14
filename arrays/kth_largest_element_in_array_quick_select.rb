# Hit TLE
def quick_select(nums, left, right, k)
    return nums[left] if left == right

    pivot_index = left + rand(right - left + 1)
    pivot = nums[pivot_index]

    nums[pivot_index], nums[right] = nums[right], nums[pivot_index]

    store_index = left
    (left...right).each do |i|
      if nums[i] <= pivot
        nums[store_index], nums[i] = nums[i], nums[store_index]
        store_index += 1
      end
    end

    nums[right], nums[store_index] = nums[store_index], nums[right]

    if k == store_index
      nums[k]
    elsif k < store_index
      quick_select(nums, left, store_index - 1, k)
    else
      quick_select(nums, store_index + 1, right, k)
    end
  end

def find_kth_largest(nums, k)
    return nil if nums.empty? || k <= 0 ||  k > nums.size
    k = nums.size - k
    quick_select(nums, 0, nums.size - 1, k)
end