# @param {Integer} n
# @return {Boolean}
def is_power_of_four(n)
    n > 0 && (n == 1 || (Math.log2(n) % 2).zero?)
end