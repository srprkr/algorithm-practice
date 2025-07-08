# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    num_count = Hash.new(0)

    nums.each do |num|
        if num_count[num]
            num_count[num] += 1
        else
            num_count[num] = 0
        end
    end
    

    most_freq = num_count.max_by{ |k, v| v}.first
    

    # puts num_count
    most_freq
end