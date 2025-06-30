class MedianFinder
    def initialize()
        @arr = []
    end

    def add_num(num)
        ind = @arr.bsearch_index {|x| x > num } || @arr.length
        @arr.insert(ind, num)
    end

    def find_median()
        n = @arr.size
        m = n / 2
        n.odd? ? @arr[m] : (@arr[m - 1] + @arr[m] ) / 2.0
    end
end