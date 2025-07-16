class Trie
    def initialize()
        @root = Hash.new { |h1, key| h1[key] = {} }
    end


=begin
    :type word: String
    :rtype: Void
=end
    def insert(word)
        current_node = @root
        word_array = word.chars << true
        word_array.each do |each_char|
            current_node[each_char] ||= Hash.new { |h1, key| h1[key] = {} }
            current_node = current_node[each_char]
        end
        nil
    end


=begin
    :type word: String
    :rtype: Boolean
=end
    def search(word)
        current_node = @root
        word.chars.each do |each_char|
            return false if current_node[each_char].nil?

            current_node = current_node[each_char]
        end
        return current_node.keys.include?(true)
    end


=begin
    :type prefix: String
    :rtype: Boolean
=end
    def starts_with(prefix)
        word = prefix
        current_node = @root
        word.chars.each do |each_char|
            return false if current_node[each_char].nil?

            current_node = current_node[each_char]
        end
        !current_node.keys.empty?
    end

    private

        def do_recursive(word, base_node, partial = '')
            base_node.keys.each do |pos|
                if pos == true
                    @results << word + partial
                else
                    do_recursive(word, base_node[pos], partial + pos)
                end
            end
        end

end

# Your Trie object will be instantiated and called as such:
# obj = Trie.new()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.starts_with(prefix)