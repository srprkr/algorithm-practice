# @param {Integer[][]} matrix
# @return {Integer[][]}
def transpose(matrix)
    m = matrix.size
    n = matrix[0].size

    t_matrix = Array.new(n){Array.new(m)}

    matrix.each_with_index do |row, i|
        row.each_with_index do |col, j|
            t_matrix[j][i] = col
        end
    end

    t_matrix
end