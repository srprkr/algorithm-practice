# @param {Integer} n
# @param {Integer[][]} queries
# @return {Integer[]}
def product_queries(n, queries)
    binary = []
    rep = 1
    mod = 10**9 + 7

    while n != 0
        binary << rep if n % 2 == 1
        n /= 2
        rep *= 2
    end

    queries.map do |l, r|
        prod = 1
        (l..r).each { |i| prod = (prod * binary[i]) % mod }
        prod
    end
end