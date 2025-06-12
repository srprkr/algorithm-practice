def counting_sort(arr, min_value, max_value)
    range_value = max_value - min_value + 1
    aux = Array.new(range_value, 0)

    arr.each do |num|
        aux[num - min_value] += 1
    end

    index = 0
    (0...range_value).each do |i|
        while aux[i] > 0
            arr[index] = i + min_value
            index += 1
            aux[i] -= 1
        end
    end

    arr
end

def sort_colors(nums)
    return nums if nums.empty?
    counting_sort(nums, nums.min, nums.max)
end