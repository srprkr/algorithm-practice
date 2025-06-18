class NumArray

=begin
    :type nums: Integer[]
=end
    def initialize(nums)
        @prefix_sums = [0] * (nums.size + 1)
        nums.each_with_index do |num, i|
            @prefix_sums[i + 1] = @prefix_sums[i] + num
        end
    end


=begin
    :type left: Integer
    :type right: Integer
    :rtype: Integer
=end
    def sum_range(left, right)
        @prefix_sums[right + 1] - @prefix_sums[left]
    end


end

# Your NumArray object will be instantiated and called as such:
# obj = NumArray.new(nums)
# param_1 = obj.sum_range(left, right)