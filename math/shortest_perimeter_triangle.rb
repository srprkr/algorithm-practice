# @param {Integer[]} nums
# @return {Integer}
def largest_perimeter(nums)
    nums.sort!.reverse!

    (0..nums.size - 3).each do |i|
        if nums[i] < nums[i + 1] + nums[i + 2]
            return nums[i] + nums[i + 1] + nums[i + 2]
        end
    end

    0 
end
