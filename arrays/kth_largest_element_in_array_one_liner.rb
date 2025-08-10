def find_kth_largest(nums, k)
  nums.sort!.reverse![k-1]
end