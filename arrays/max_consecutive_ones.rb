# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
    curr_ones_ct = 0
    max_ones_ct = 0

    nums.each do |num|
        if num == 1
            curr_ones_ct += 1
            max_ones_ct = [max_ones_ct, curr_ones_ct].max
        else
            curr_ones_ct = 0
        end
    end
    max_ones_ct
end