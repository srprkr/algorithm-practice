# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
        pa = pattern.split("")
        s_arr = s.split(" ")
        uniq_s_arr = s_arr.uniq
        return false if pa.size != s_arr.count
        hash = {}

        pa.uniq.each_with_index do |l, i|
            hash[l] = uniq_s_arr[i]
        end
        pa.each_with_index do |l, i|
            return false if hash[l] != s_arr[i]
        end
        true
end