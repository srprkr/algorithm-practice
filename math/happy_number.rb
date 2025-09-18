# @param {Integer} n
# @return {Boolean}
def is_happy(n)
    seen = Set.new
    
    while n != 1 && !seen.include?(n)
        seen.add(n)

        sum = 0
        n.to_s.each_char do |digit|
            sum += digit.to_i ** 2
        end

        n = sum
    end

    return n == 1
end