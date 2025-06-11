def merge_sort(arr, left, right)
  return if left >= right
  
  mid = (left + right) / 2

  merge_sort(arr, left, mid)
  merge_sort(arr, mid + 1, right)
  
  merge(arr, left, mid, right)
end

def merge(arr, left, mid, right)
  result = []

  i = left
  j = mid + 1

  while(i<= mid && j <= right)
      if arr[i] <= arr[j]
        result << arr[i]
        i += 1
      else
        result << arr[j]
        j += 1
      end
  end

  while i <= mid
    result << arr[i]
    i += 1
  end

  while j <= right
    result << arr[j]
    j += 1
  end

  result.each_with_index do |val, k|
    arr[left + k] = val
  end
end


def sort_array(nums)
  return nums if nums.size <= 1
  merge_sort(nums, 0, nums.size - 1)
  nums
    
end