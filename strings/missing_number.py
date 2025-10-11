# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
    (0..(nums.size)).sort.each do |n|
        if !nums.include?(n)
            return n
        end
    end
end