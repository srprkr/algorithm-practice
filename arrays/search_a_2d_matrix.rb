def search_matrix(matrix, target)
    # flatten the matrix
    flat = []
    matrix.each do |row|
        row.each do |num|
            flat << num
        end
    end

    # set right and left
    left = 0
    right = flat.size - 1

    while left <= right
        return false if flat.include?(target) == false
        mid = (left + right) / 2
        if flat[mid] == target 
            return flat[mid] == target
        elsif flat[mid] < target
            left = mid + 1
        else
            right = mid - 1
        end
    end

end