class AllOne
    attr_accessor :str
    def initialize()
        @str = Hash.new(0)
        @max = nil
        @min = nil

    end


=begin
    :type key: String
    :rtype: Void
=end
    
    def inc(key)
        return unless str[key]
        str[key] += 1
        @max = key if str[key] > str[@max]
        @min = find_v
    end


=begin
    :type key: String
    :rtype: Void
=end
    
    def dec(key)
        return unless str[key]
        str.delete(key) if (str[key] -= 1) == 0         
        @min = key if str[key] < str[@min]  
        @min = find_v if str[@min] == 0
        @max = find_v(1) if key == @max
    end

=begin
    :rtype: String
=end
    def get_max_key() = @max || ''


=begin
    :rtype: String
=end
    def get_min_key() = @min || ''

    private

    def find_v(sign = 0)
        return '' if str.empty?
        target_value = sign == 0 ? str.values.min : str.values.max
        str.each do |key, value|
            return key if value == target_value
        end
        ''
    end


end

# Your AllOne object will be instantiated and called as such:
# obj = AllOne.new()
# obj.inc(key)
# obj.dec(key)
# param_3 = obj.get_max_key()
# param_4 = obj.get_min_key()