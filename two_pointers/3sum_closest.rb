# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
    nums.sort!
    n = nums.size
    sum_closest = min = Float::INFINITY
    (1..n - 2).each do |mid_idx|
        mid = nums[mid_idx]
        left = 0
        right = n - 1
        while left < mid_idx && mid_idx < right
            sum = nums[left] + mid + nums[right]
            return target if sum == target
            if sum > target
                if sum - target < min
                    min = sum - target
                    sum_closest = sum
                end
                right -= 1
            else
                if target - sum < min
                    min = target - sum
                    sum_closest = sum
                end
                left += 1
            end
        end
    end
    sum_closest
end