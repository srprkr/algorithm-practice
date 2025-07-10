# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
def kth_smallest(matrix, k)
    low, high = matrix[0][0] , matrix[-1][-1]

    p = -> (x) {
        count = 0
        matrix.each do |row|
            count += ( (0..row.count - 1).bsearch{|i| row[i] > x } || row.count )
        end

        count >= k
    }

    while low < high
        mid = (low + high) / 2

        if p[mid]
            high = mid
        else
            low = mid + 1
        end
    end

    low
end