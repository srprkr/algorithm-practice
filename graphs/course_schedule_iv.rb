# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @param {Integer[][]} queries
# @return {Boolean[]}
def check_if_prerequisite(num_courses, prerequisites, queries)
    is_reachable = Array.new(num_courses) { Array.new(num_courses, false) }
    prerequisites.each do |u, v|
        is_reachable[u][v] = true
    end
    (0...num_courses).each do |i|
        (0...num_courses).each do |j|
            next unless is_reachable[j][i]
            (0...num_courses).each do |k|
                if is_reachable[i][k]
                    is_reachable[j][k] = true
                end
            end
        end
    end
    queries.map do |u, v|
        is_reachable[u][v]
    end
end