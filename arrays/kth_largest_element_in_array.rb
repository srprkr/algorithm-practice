def find_kth_largest(nums, k)
  min_heap = []

  nums.each do |num|
    if min_heap.size < k
      min_heap << num
      min_heap.sort!
    elsif num > min_heap[0]
      min_heap[0] = num
      min_heap.sort!
    end
  end

  min_heap[0]
end