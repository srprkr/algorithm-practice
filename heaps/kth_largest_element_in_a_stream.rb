class KthLargest
=begin
    :type k: Integer
    :type nums: Integer[]
=end
    def initialize(k, nums)
        @k = k
        @heap = []
        nums.each do |num|
          add(num)
        end
    end


=begin
    :type val: Integer
    :rtype: Integer
=end
    def add(val)
        @heap << val
        @heap.sort!
        @heap.shift while @heap.size > @k
        @heap.first
    end


end

# Your KthLargest object will be instantiated and called as such:
# obj = KthLargest.new(k, nums)
# param_1 = obj.add(val)