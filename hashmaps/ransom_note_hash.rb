# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    ransom_count = {}

    ransom_note.each_char do |char|
          ransom_count[char] = ransom_count[char] ||= 0; ransom_count[char] += 1
    end

    ransom_count.each do |char, needed|
        return false if magazine.count(char) < needed
    end
    return true
end