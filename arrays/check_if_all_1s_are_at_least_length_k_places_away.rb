# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def k_length_apart(nums, k)
    count = k
    
    nums.each do |n|
        if n == 1
            return false if count < k
            count = 0
        else
            count += 1
        end
    end
    
    true
end