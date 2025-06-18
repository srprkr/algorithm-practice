class NumMatrix

    def initialize(matrix)
        return if @matrix.empty? || matrix[0].empty?

        rows, cols = matrix.size, matrix[0].size
        @prefix_sum = Array.new(rows + 1) {Array.new(cols + 1, 0) }
        
        (0..rows).each do |i|
            (0..cols).each do |j|
                @prefix_sum[i + 1] = @prefix_sum[i+1][j] + @prefix_sum[i][j+1] - @prefix_sum[i][j] + matrix[i][j]
            end
        end
    end

    def sum_region(row1, col1, row2, col2)
        @prefix_sum[row2 + 1][col2 + 1] -
        @prefix_sum[row2 + 1][col1] -
        @prefix_sum[row1][col2 + 1] +
        @prefix_sum[row1][col1]
    end
end
