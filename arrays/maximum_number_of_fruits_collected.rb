# @param {Integer[][]} fruits
# @return {Integer}
def max_collected_fruits(fruits)
    n = fruits.size
    diag = 0

    (0...n).each do |i|
        diag += fruits[i][i]
    end

    dp = Array.new(n + 1) { Array.new(n + 1, -Float::INFINITY) }

    dp[n - 1][0] = fruits[n - 1][0]

    (1...n).each do |col|
        ((col + 1)...n).each do |row|
            dp[row][col] = [
                dp[row + 1][col - 1] + fruits[row][col],
                dp[row][col - 1] + fruits[row][col],
                dp[row - 1][col - 1] + fruits[row][col]
            ].max
        end
    end

    dp[0][n - 1] = fruits[0][n - 1]

    (1...n).each do |row|
        ((row + 1)...n).each do |col|
            dp[row][col] = [
                dp[row - 1][col - 1] + fruits[row][col],
                dp[row - 1][col] + fruits[row][col],
                dp[row - 1][col + 1] + fruits[row][col]
        ].max
        end
    end
    diag + dp[n - 1][n - 2] + dp[n - 2][n - 1]
end