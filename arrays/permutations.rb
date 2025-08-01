def permute(nums)
    return [nums] if nums.size == 1
    res = []

    nums.each_with_index do |num, ind|

        remaining = nums.dup
        remaining.delete_at(ind)

        permute(remaining).each do |perm|
            res << [num] + perm
        end
    end

    res
end