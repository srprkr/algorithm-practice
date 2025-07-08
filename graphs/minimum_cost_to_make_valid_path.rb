# @param {Integer[][]} grid
# @return {Integer}
def min_cost(grid)
    m, n = grid.size, grid[0].size
    dist = Array.new(m) { Array.new(n, Float::INFINITY) }
    dist[0][0] = 0

    priority_queue = [[0,0,0]]
    directions = [[0, 1], [0, -1], [1, 0], [-1, 0]]

    while !priority_queue.empty?
        cost, row, col = priority_queue.shift
        next if cost > dist[row][col]

        4.times do |i|
            new_row = row + directions[i][0]
            new_col = col + directions[i][1]

            next if new_row < 0 || new_row >= m || new_col < 0 || new_col >= n

            new_cost = cost
            new_cost += 1 if grid[row][col] != i + 1

            if new_cost < dist[new_row][new_col]
                dist[new_row][new_col] = new_cost
                index = priority_queue.bsearch_index { |x| x[0] > new_cost } || priority_queue.size
                priority_queue.insert(index, [new_cost, new_row, new_col])
            end
        end
    end

    dist[m-1][n-1]
end