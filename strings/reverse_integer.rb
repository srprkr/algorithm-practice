# @param {Integer} x
# @return {Integer}
def reverse(x)
    result = 0
    if x.to_s.include?("-") 
        result = -x.to_s.reverse.to_i 
    else
        result = x.to_s.reverse.to_i
    end

    bit_max = 2**31
    bit_min = -2**31

    return 0 if result > bit_max || result < bit_min

    result
end