# TLE - but how to do it in MaxHeap
require "algorithms"
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}

def find_kth_largest(nums, k)

    max_heap = Containers::MaxHeap.new(nums)

    (k - 1).times do
        max_heap.pop
    end

  max_heap.pop
end