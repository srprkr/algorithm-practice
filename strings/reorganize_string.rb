# @param {String} s
# @return {String}
def reorganize_string(s)
    hash = {}
    
    s.each_char do |ch|
        hash[ch] = (hash[ch] || 0) + 1
        return "" if hash[ch] > (s.size + 1) / 2
    end

    sorted = hash.sort_by { |k, v| -v}
    
    res = Array.new(s.size, "")
    i = 0

    sorted.each do |ch, count|
        count.times do
          return "" if i >= s.size
          res[i] = ch
          i += 2
        end
        i = 1 if i >= s.size
    end
    

    res.join
end