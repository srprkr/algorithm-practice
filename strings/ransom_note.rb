# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    magazine_chars = Hash.new(0)
    magazine.each_char { |c| magazine_chars[c] += 1 }
    
    ransom_note.each_char do |c|
        return false if magazine_chars[c] == 0
        magazine_chars[c] -= 1
    end
    
    true
end