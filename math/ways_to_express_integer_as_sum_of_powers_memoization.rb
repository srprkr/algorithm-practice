# @param {Integer} n
# @param {Integer} x
# @return {Integer}
@mod = 10**9 + 7

def number_of_ways(n, x)
    usable_nums = []
    i = 1
    while i**x <= n
        usable_nums << i**x
        i += 1
    end

    @nums = usable_nums
    @memo = Array.new(n + 1) { {} }

    ways(0, n) % @mod
end

def ways(i, n)
    return 1 if n == 0
    return 0 if i == @nums.size
    return 0 if @nums[i] > n
    return @memo[i][n] if @memo[i][n]

    option1 = ways(i + 1, n)
    option2 = ways(i + 1, n - @nums[i])

    @memo[i][n] = option1 + option2
end
