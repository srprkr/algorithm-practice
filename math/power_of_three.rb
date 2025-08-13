# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
    return false if n <= 0
    ans = Math.log(n.abs) / Math.log(3)
    ans == ans.floor
end