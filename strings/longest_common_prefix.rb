# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    pref = strs[0]
    pref_len = pref.size

    strs[1..-1].each do |s|
        while pref != s[0...pref_len]
            pref_len -= 1
            return "" if pref_len == 0

            pref = pref[0...pref_len]
        end
    end

    pref
end