# @param {Integer} num
# @return {Boolean}
def check_perfect_number(num)
    return false if num <= 1
  
    divisors = [1]
    (2..Math.sqrt(num).to_i).each do |n|
        if num % n == 0
            divisors << n
            divisors << num / n
        end
    end

    divisors.reduce(:+) == num
end