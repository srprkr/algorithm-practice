class RandomizedSet
    def initialize
        @list = []
        @idx_map = {}
    end

    def search(val)
        @idx_map.key?(val)
    end

    def insert(val)
        return false if search(val)

        @list << val
        @idx_map[val] = @list.size - 1
        true
    end

    def remove(val)
        return false unless search(val)

        idx = @idx_map[val]
        @list[idx] = @list[-1]
        @idx_map[@list[-1]] = idx
        @list.pop
        @idx_map.delete(val)
        true
    end

    def get_random()
        @list.sample
    end
end