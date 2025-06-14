
def counting_sort(arr, min_value, max_value)
    range_value = max_value - min_value + 1
    # build empty count array
    count = Array.new(range_value, 0)

    # Count occurences
    arr.each do |num|
        count[num - min_value] += 1
    end

    # Reconstruct the sorted_arr
    index = 0
    (0...range_value).each do |i|
        while count[i] > 0
            arr[index] = i + min_value
            index += 1
            count[i] -= 1
        end
    end

    arr
end

def sort_colors(nums)
    return nums if nums.empty?
    counting_sort(nums, nums.min, nums.max)
end