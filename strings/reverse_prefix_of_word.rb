def reverse_prefix(word, ch)
    return word if !word.include?(ch)

    ch_ind = word.index(ch)

    # first + last
    word[0..ch_ind].reverse + word[ch_ind.to_i + 1..-1]

end