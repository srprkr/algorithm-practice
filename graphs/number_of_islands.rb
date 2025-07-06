# @param {Character[][]} grid
# @return {Integer}
def dfs(grid, i, j)
    n = grid.size
    m = grid[0].size

    if i < 0 || j < 0 || i >= n || j >= m || grid[i][j] != '1'
        return
    end

    grid[i][j] = '2' # mark visited

    # explore neighbors
    dfs(grid, i + 1, j) # bottom
    dfs(grid, i - 1, j) # top
    dfs(grid, i, j + 1) # right
    dfs(grid, i, j - 1) # left
end

def num_islands(grid)
    count = 0
    n = grid.size
    m = grid[0].size

    for i in 0...n
        for j in 0...m
            if grid[i][j] == '1'
                count += 1
                dfs(grid, i, j)
            end
        end
    end
    return count
end