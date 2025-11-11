# @param {Integer} num
# @return {Integer}
def add_digits(num)
    sum = 0
    num.to_s.each_char do |digit|
        sum += digit.to_i
    end 
    sum.to_s.size > 1 ? add_digits(sum) : sum
end