# @param {Integer} left
# @param {Integer} right
# @return {Integer}
def range_bitwise_and(left, right)
    xor = left ^ right
    mask = ((1 << right.bit_length) - 1) ^ ((1 << xor.bit_length) - 1)
    left & mask
end