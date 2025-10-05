# @param {String[]} words
# @return {String[]}
def string_matching(words)
    results = []
    
    words.each do |search_word|
        words.each do |match_word|
        next if search_word == match_word
            found = search_word.scan(match_word)
            if found.any?
                results << found
            end
        end
    end
    results.flatten.uniq
end