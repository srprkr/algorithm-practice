def relative_sort_array(arr1, arr2)
    count = Array.new(arr1.max + 1, 0)

    arr1.each do |num| 
        count[num] += 1 
    end

    i = 0
    arr2.each do |num|
        while count[num] > 0
            arr1[i] = num
            i += 1
            count[num] -= 1
        end
        count[num] = 0
    end

    (0...arr1.max).each do |num|
        while count[num] > 0
            arr1[i] = num
            i += 1
            count[num] -= 1
        end
    end

    arr1
end