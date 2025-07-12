# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {Integer}
def ladder_length(begin_word, end_word, word_list)
    set = Set.new(word_list)
    queue = [[begin_word, 1]]

    while !queue.empty?
        word, length = queue.shift
        return length if word == end_word

        word.chars.each_with_index do |_, i|
            ('a'..'z').each do |ch|
                new_word = word.dup
                new_word[i] = ch
                if set.include?(new_word)
                    queue << [new_word, length + 1]
                    set.delete(new_word)
                end
            end
        end
    end
    0
end