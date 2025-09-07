# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    res = []
    num = (digits.join().to_i + 1)
    num.to_s.split("").each do |n|
        res << n.to_i
    end

    res(digits.join().to_i + 1)
end