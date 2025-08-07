class Solution:
    def maxCollectedFruits(self, fruits: List[List[int]]) -> int:
        n = len(fruits)
        diag = 0

        for i in range(n):
            diag += fruits[i][i]

        dp = [[-inf] * (n + 1) for _ in range(n + 1)]
        dp[n - 1][0] = fruits[n - 1][0]
        for col in range(1, n):
            for row in range(col + 1, n):
                dp[row][col] = max(
                    dp[row + 1][col - 1] + fruits[row][col],
                    dp[row][col - 1] + fruits[row][col],
                    dp[row - 1][col - 1] + fruits[row][col],
                )

        dp[0][n - 1] = fruits[0][n - 1]
        for row in range(1, n):
            for col in range(row + 1, n):
                dp[row][col] = max(
                    dp[row - 1][col - 1] + fruits[row][col],
                    dp[row - 1][col] + fruits[row][col],
                    dp[row - 1][col + 1] + fruits[row][col],                   
                )
                
        return diag + dp[n - 1][n - 2] + dp[n - 2][n - 1]
            