def is_palindrome(s)
    clean = s.gsub(/[\W_]+/, '').downcase
    return clean == clean.reverse ? true : false
end