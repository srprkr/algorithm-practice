def heapify(arr, n, i)
  largest = i
  left = 2 * i + 1
  right = 2 * i + 2

  if left < n && arr[left] > arr[largest]
    largest = left
  end

  if right < n && arr[right] > arr[largest]
    largest = right
  end

  if largest != i
    arr[i], arr[largest] = arr[largest], arr[i]
    heapify(arr, n, largest)
  end
end

def sort_array(nums)
  return nums if nums.empty?
  n = nums.size

  ((n / 2 - 1).downto(0)).each do |i|
    heapify(nums, n, i)
  end

  (n-1).downto(1) do |i|
    nums[0], nums[i] = nums[i], nums[0]
    heapify(nums, i, 0)
  end

  nums
end

  