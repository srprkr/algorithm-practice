# @param {Integer[]} arr
# @return {Boolean}
def three_consecutive_odds(arr)
    ct = 0
    arr.each do |n|
        ct += 1 if n.odd?
        ct = 0 if n.even?
        return true if ct == 3
    end
    false
end