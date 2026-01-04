# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    def recursive(n, i)
        return 1 if i == n
        return 0 if i > n
        step1 = recursive(n, i + 1)
        step2 = recursive(n, i + 2)
        step1 + step2
    end
    return recursive(n, 0)
end