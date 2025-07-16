class MapSum
    def initialize()
        @h = {}
    end


=begin
    :type key: String
    :type val: Integer
    :rtype: Void
=end
    def insert(key, val)
        @h[key] = val
    end


=begin
    :type prefix: String
    :rtype: Integer
=end
    def sum(prefix)
        @h.keys.select{|x| Regexp.new('^'+prefix) === x}.map{|x| @h[x]}.sum
    end
end

# Your MapSum object will be instantiated and called as such:
# obj = MapSum.new()
# obj.insert(key, val)
# param_2 = obj.sum(prefix)