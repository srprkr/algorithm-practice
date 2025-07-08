# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Integer[]}
def find_order(num_courses, prerequisites)
    adj = Array.new(num_courses) { [] }
    in_degree = Array.new(num_courses) { 0 }
    prerequisites.each do |c, pre|
        in_degree[c] += 1
        adj[pre] << c
    end
    queue = Queue.new

    (0...num_courses).each do |i|
        queue << i if in_degree[i] == 0
    end

    result = []

    until queue.empty? do
        node = queue.pop
        result << node
        adj[node].each do |n|
            in_degree[n] -= 1
            queue << n if in_degree[n] == 0
        end
    end 
    result.size == num_courses ? result : []
end