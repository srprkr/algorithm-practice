# @param {Integer} n
# @return {Boolean}
def reordered_power_of2(n)
    chars = n.to_s.chars.sort
    # build out powers of two stopping if length it greater than number
    powers_of_two = []
    max_digits = n.to_s.size

    i = 0
    while (pow = (1 << i)) < 10 ** max_digits
      powers_of_two << pow.to_s.chars.sort
      i += 1
    end

    # compare chars in n to powers_of_two
    powers_of_two.any? { |num| num == chars }
end