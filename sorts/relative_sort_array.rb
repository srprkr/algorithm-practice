def relative_sort_array(arr1, arr2)
    return arr1 if arr1.empty?

    freq = Hash.new(0)
    arr1.each { |num| freq[num] += 1}

    result = []

    arr2.each do |num|
        while freq[num] > 0
            result << num
            freq[num] -= 1
        end
    end

    freq.keys.sort.each do |num| 
        freq[num].times {result << num }
    end

    result
end