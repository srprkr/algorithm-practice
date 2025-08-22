# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
    max_reach = 0
    (0...nums.size).each do |i|
        return false if i > max_reach
        max_reach = [max_reach, i + nums[i]].max
    end
    max_reach >= nums.size - 1
end