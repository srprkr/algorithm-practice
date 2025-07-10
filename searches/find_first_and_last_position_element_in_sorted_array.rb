def search_range(nums, target)
    result = []

    nums.each_with_index do |num, ind|
        if num == target
            result << ind
        end
    end

    return [-1, -1] unless !result.empty?
    return [result[0], result[-1]]

end