# @param {String[]} words
# @return {String[]}
def find_words(words)
    keyboard = ["qwertyuiop", "asdfghjkl", "zxcvvbnm"]
    res = []

    words.each do |word|
        keyboard.each do |row|
            not_found = false

            word.chars.each do |char|
                unless row.chars.include? char.downcase
                    not_found = true
                    break
                end
            end

            unless not_found
                res << word
                break
            end        
        end
    end
    res
end