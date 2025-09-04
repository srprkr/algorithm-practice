# @param {String} s
# @return {String}
def reverse_words(s)
    output = []
    s.split(" ").each do |word|
        output.unshift(word)    
    end

    output.join(" ")
end