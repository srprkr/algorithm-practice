class TrieNode
    attr_accessor :children, :end_of_word

    def initialize()
        @children = {}
        @end_of_word = false
    end
end

class WordDictionary
    attr_reader :root

    def initialize()
        @root = TrieNode.new
    end

=begin
    :type word: String
    :rtype: Void
=end
    def add_word(word)
        curr = root

        word.each_char do |ch|
            if !curr.children.key?(ch)
                curr.children[ch] = TrieNode.new
            end
            curr = curr.children[ch]
        end
        curr.end_of_word = true
    end

=begin
    :type word: String
    :rtype: Boolean
=end
    def search(word)
       @word = word
       dfs(0, root) 
    end

    def dfs(j, node)
        curr = node
        (j...@word.size).each do |i|
            ch = @word[i]
            if ch == '.'
                curr.children.values.each do |child|
                    return true if dfs(i + 1, child)
                end
                return false
            else
                return false if !curr.children.key?(ch)

                curr = curr.children[ch]
            end
        end
        curr.end_of_word
    end
end

# Your WordDictionary object will be instantiated and called as such:
# obj = WordDictionary.new()
# obj.add_word(word)
# param_2 = obj.search(word)