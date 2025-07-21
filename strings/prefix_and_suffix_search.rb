
class WordFilter

=begin
    :type words: String[]
=end
    def initialize(words)
        @dict = {}

      words.each_with_index do |word, i|
        len = word.size
        
        prefixes = Array.new(len + 1) { |j| word[0, j]}
        suffixes = Array.new(len + 1) { |j| word[len - j, j] }
        
        prefixes.each do |prefix|
          suffixes.each do |suffix|
            @dict["#{prefix}##{suffix}"] = i
          end
        end
      end
    end

=begin
    :type pref: String
    :type suff: String
    :rtype: Integer
=end
    def f(pref, suff)
        @dict["#{prefix}##{suffix}"] || -1
    end


end

# Your WordFilter object will be instantiated and called as such:
# obj = WordFilter.new(words)
# param_1 = obj.f(pref, suff)