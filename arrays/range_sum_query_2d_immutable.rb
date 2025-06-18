class NumMatrix

    def initialize(matrix)
        @matrix = matrix        
    end

    def sum_region(row1, col1, row2, col2)
        sum = 0
        
        # Iterate through each row in the rectangle
        (row1..row2).each do |row|
            # Iterate through each column in the rectangle
            (col1..col2).each do |col|
                sum += @matrix[row][col]
            end
        end
        
        sum
    end
end
