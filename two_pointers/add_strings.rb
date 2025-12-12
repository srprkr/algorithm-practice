# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
    res = ""
    i, j = num1.size - 1, num2.size - 1
    carry = 0

    while i >= 0 || j >= 0 || carry > 0
        
        digit1 = i >= 0 ? num1[i].to_i : 0
        digit2 = j >= 0 ? num2[j].to_i : 0

        current_sum = digit1 + digit2 + carry

        carry = current_sum / 10
        res = (current_sum % 10).to_s + res

        i -= 1
        j -= 1
    end
    
    res
  end