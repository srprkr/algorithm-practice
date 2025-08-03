# @param {Integer[]} nums
# @return {Integer[]}
def build_array(nums)
    res = []
    nums.each do |num|
        res << nums[num]
    end

    res
end