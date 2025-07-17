# @param {Integer} n
# @param {Integer[][]} edges
# @param {Integer} distance_threshold
# @return {Integer}
def find_the_city(n, edges, distance_threshold)
    dist = Array.new(n) { Array.new(n, Float::INFINITY) }
    n.times { |i| dist[i][i] = 0 }
    edges.each do |u, v, w|
        dist[u][v] = dist[v][u] = w
    end
    n.times do |k|
        n.times do |i|
            n.times do |j|
                dist[i][j] = [dist[i][j], dist[i][k] + dist[k][j]].min
            end
        end
    end
    dist.each_with_index
        .min_by { |row, i| [row.count { |d| d <= distance_threshold }, -i] }
        .last
end