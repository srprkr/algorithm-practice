# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
    (s + t).each_char.map(&:ord).reduce(:^).chr
end