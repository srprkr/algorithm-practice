# @param {Integer} n
# @param {Integer} x
# @return {Integer}
def number_of_ways(n, x)
    mod = 10**9 + 7
    # Find the maximum base such that base**x <= n
    max_base = 1
    while max_base ** x <= n
        max_base += 1
    end
    max_base -= 1

    # dp[i][j]: number of ways to get sum j using bases up to i
    dp = Array.new(max_base + 2) { Array.new(n + 1, 0) }
    # There is 1 way to make sum 0: use nothing
    (0..max_base+1).each { |i| dp[i][0] = 1 }

    (1..max_base).each do |base|
        power = base ** x
        (0..n).each do |sum|
            # Ways without using this base
            dp[base][sum] = dp[base-1][sum]
            # Ways using this base
            if sum >= power
                dp[base][sum] = (dp[base][sum] + dp[base-1][sum-power]) % mod
            end
        end
    end

    dp[max_base][n]
end