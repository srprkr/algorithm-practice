# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    ransom_note.split("").uniq.each do |char|
        return false if ransom_note.count(char) > magazine.count(char)
    end
    return true
end