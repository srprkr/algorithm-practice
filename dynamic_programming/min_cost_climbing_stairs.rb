# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
    n = cost.size
    return 0 if n <= 1

    prev2, prev1 = 0, 0
    (2..n).each do |i|
        curr = [prev1 + cost[i - 1], prev2 + cost[i - 2]].min
        prev2, prev1 = prev1, curr
    end
    prev1
end