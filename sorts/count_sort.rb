# counting sort
def counting_sort(arr, min_value, max_value)
    range_value = max_value - min_value + 1
    aux = Array.new(range_value, 0)

    arr.each do |num|
        aux[num - min_value] += 1
    end

    (1...aux.size).each do |i|
        aux[i] += aux[i - 1]
    end

    sorted_arr = Array.new(arr.size, 0)
    arr.reverse.each do |num|
        index = num - min_value
        sorted_arr[aux[index] - 1] = num
        aux[num] -= 1
    end

    sorted_arr
end

def sort_array(nums)
    return nums if nums.empty?
    counting_sort(nums, min(nums), max(nums))
end