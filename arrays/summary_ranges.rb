# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
    ind = 0
    res = []

    nums.each_index do |i|
        next if nums[i + 1] == nums[i] + 1

        res << (ind == i ? nums[i].to_s : "#{nums[ind]}->#{nums[i]}")
        ind = i + 1
    end

    res
end