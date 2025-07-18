# @param {Integer} n
# @param {Integer[][]} flights
# @param {Integer} src
# @param {Integer} dst
# @param {Integer} k
# @return {Integer}
def find_cheapest_price(n, flights, src, dst, num_of_stops_allowed)
    prev_cost = [1.0/0.0]*n
    prev_cost[src] = 0
    curr_cost = prev_cost.dup
    for i in 0..num_of_stops_allowed
        flights.each do |src1, src2, cost|
            if (prev_cost[src1] != 1.0/0.0)
                curr_cost[src2] = [prev_cost[src1] + cost, curr_cost[src2]].min
            end
        end
        prev_cost = curr_cost.dup
    end
    return prev_cost[dst] != 1.0 / 0.0 ? prev_cost[dst] : -1
end