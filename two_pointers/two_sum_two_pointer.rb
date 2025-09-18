# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    indexed_nums = nums.each_with_index.map { |num, idx| [num, idx] }

    indexed_nums.sort_by! { |num, idx| num }

    pointer1 = 0
    pointer2 = indexed_nums.length - 1

    while pointer1 < pointer2
        current_sum = indexed_nums[pointer1][0] + indexed_nums[pointer2][0]

        if current_sum == target
            return [indexed_nums[pointer1][1], indexed_nums[pointer2][1]]
        elsif current_sum < target
            pointer1 += 1
        else
            pointer2 -= 1
        end
    end

    []
end