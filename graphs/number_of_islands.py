class Solution:
    def dfs(self, grid, i, j):
        n = len(grid)
        m = len(grid[0])

        if i < 0 or j < 0 or i >= n or j >= m or grid[i][j] != '1':
            return

        grid[i][j] = '2'  # mark visited

        # explore neighbors
        self.dfs(grid, i + 1, j)  # bottom
        self.dfs(grid, i - 1, j)  # top
        self.dfs(grid, i, j + 1)  # right
        self.dfs(grid, i, j - 1)  # left

    def numIslands(self, grid: List[List[str]]) -> int:
        if not grid or not grid[0]:
            return 0

        count = 0
        n = len(grid)
        m = len(grid[0])

        for i in range(n):
            for j in range(m):
                if grid[i][j] == '1':
                    count += 1
                    self.dfs(grid, i, j)
        return count