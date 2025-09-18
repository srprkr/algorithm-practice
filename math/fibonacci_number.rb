# @param {Integer} n
# @return {Integer}
def fib(n)
    return n if n == 0 || n == 1
    # build fibonacci sequence
    fib = []
    (0..n).each_with_index do |num, i|
        if i == 0 || i == 1
            fib << num
        else
            fib << fib[i - 2] + fib[i - 1]
        end
    end
    # add last two entries of fib (the two before n)
    fib[-1]
end