# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums.sort!
  result = []

  (0...nums.size - 2).each do |i|
    # Skip duplicate values for the first pointer
    next if i > 0 && nums[i] == nums[i - 1]

    left = i + 1
    right = nums.size - 1

    while left < right
      sum = nums[i] + nums[left] + nums[right]
      if sum == 0
        result << [nums[i], nums[left], nums[right]]
        left += 1
        right -= 1
        # Skip duplicates for left and right pointers
        left += 1 while left < right && nums[left] == nums[left - 1]
        right -= 1 while left < right && nums[right] == nums[right + 1]
      elsif sum < 0
        left += 1
      else
        right -= 1
      end
    end
  end

  result
end