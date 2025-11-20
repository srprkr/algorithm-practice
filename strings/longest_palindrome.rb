# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  char_count = {}

  s.each_char do |ch|
    char_count[ch] = (char_count[ch] || 0) + 1
  end

  length = 0
  has_odd = false

  char_count.each do |ch, count|
    if count.even?
      length += count
    else
      length += count - 1
      has_odd = true
    end
  end

  length += 1 if has_odd

  length
end