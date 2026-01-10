# @param {Integer[]} days
# @param {Integer[]} costs
# @return {Integer}
def mincost_tickets(days, costs)
    travel_days = {}
    days.each { |d| travel_days[d] = true }
    last_day = days.last
    dp = Array.new(last_day + 1, 0)

    (1..last_day).each do |day|
        if !travel_days[day]
            dp[day] = dp[day - 1]
        else
            dp[day] = [
                dp[day - 1] + costs[0],
                dp[[0, day - 7].max] + costs[1],
                dp[[0, day - 30].max] + costs[2]
            ].min
        end
    end
    dp[last_day]
end