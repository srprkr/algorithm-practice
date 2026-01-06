# @param {Integer} n
# @return {Integer}
def tribonacci(n)
    return 0 if n == 0
    return 1 if n <= 2

    t0, t1, t2 = 0, 1, 1
    (3..n).each do
        t0, t1, t2 = t1, t2, t0 + t1 + t2
    end
    t2
end