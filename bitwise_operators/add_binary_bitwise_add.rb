# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
    x = a.to_i(2)
    y = b.to_i(2)
    
    while y > 0
        # Store carry and sum separately
        carry = (x & y) << 1
        sum = x ^ y
        
        x = sum
        y = carry
    end
    
    x.to_s(2)
end