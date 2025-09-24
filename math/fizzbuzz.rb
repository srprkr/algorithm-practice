# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    res = []
    (1..n).each do |num|
        if num % 5 == 0 && num % 3 == 0
            res << "FizzBuzz"
        elsif num % 5 == 0
            res << "Buzz"
        elsif num % 3 == 0
            res << "Fizz"
        else
            res << num.to_s
        end
    end

    res
end