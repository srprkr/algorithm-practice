# @param {Integer[][]} mat
# @return {Integer}
def diagonal_sum(mat)
    n = mat.size
    sum = 0

    (0...n).each do |i|
        sum += mat[i][i]
        sum += mat[i][-(1 + i)] 
    end

    center = n / 2
    return n.odd? ? sum -= mat[center][center] : sum
end