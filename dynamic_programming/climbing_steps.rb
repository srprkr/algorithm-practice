# @param {Integer} n
# @return {Integer}
def climb_stairs(n, memo = Hash.new)
    return 1 if n == 0
    return 0 if n < 0
    return memo[n] if !memo[n].nil?

    memo[n] = climb_stairs(n - 1, memo) + climb_stairs(n - 2, memo)

    memo[n]
end