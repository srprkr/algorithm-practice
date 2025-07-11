def single_non_duplicate(nums)
    nums.each do |num|
        return nums.count(num) == 2 ? next : num
    end
end