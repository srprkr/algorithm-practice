# @param {String} s
# @return {Integer}
def roman_to_int(s)
    res = ''
    romans = {
        'I' => 1,
        'V' => 5,
        'X' => 10,
        'L' => 50,
        'C' => 100,
        'D' => 500,
        'M' => 1000,
    }
    res = 0
    i = 0
    while i < s.length
        # Check for two-character combinations first
        if i + 1 < s.length && romans.key?(s[i..i+1])
            res += romans[s[i..i+1]]
            i += 2
        else
            res += romans[s[i]]
            i += 1
        end
    end
    res
end