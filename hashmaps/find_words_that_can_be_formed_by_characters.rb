# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
    char_tally = chars.chars.tally
    p char_tally

    result = 0

    words.each do |word|
        word_tally = word.chars.tally

        valid = true
        word_tally.each do |char, count|
            if !char_tally.key?(char) || char_tally[char] < count
                valid = false
                break
            end
        end

        result += word.size if valid
    end

    result
end