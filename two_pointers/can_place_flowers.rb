# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)

    zeroes = 0
    ([0] + flowerbed + [0]).each do |spot|

        if spot == 0
            zeroes += 1
        else
            zeroes = 0
        end

        if zeroes == 3
            zeroes = 1
            n -= 1
        end

        break if n == 0
    end
    
    n == 0
end