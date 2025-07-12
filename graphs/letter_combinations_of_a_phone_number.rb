# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
    digit_to_char = {
      '2' => 'abc', '3' => 'def', '4' => 'ghi', '5' => 'jkl',
      '6' => 'mno', '7' => 'pqrs', '8' => 'tuv', '9' => 'wxyz'
    }
    ans = []

    return [] if digits.empty?

    def dfs(digits, digit_to_char, ans, start_index, path)
      if start_index == digits.size
        ans << path
        return
      end

      digit_to_char[digits[start_index]].each_char do |char|
        dfs(digits, digit_to_char, ans, start_index + 1, path + char)
      end
    end

    dfs(digits, digit_to_char, ans, 0, "")
    
    ans
end