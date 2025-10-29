# @param {Integer[]} nums
# @return {Integer}
def find_lhs(nums)
    nums.sort!
    left = 0
    right = nums.size - 1
    max_len = 0

    (1...nums.size).each do |right|
        while left < right && nums[right] - nums[left] > 1
            left += 1
        end

        if nums[right] - nums[left] == 1
            max_len = [max_len, right - left + 1].max
        end
    end

    max_len
end