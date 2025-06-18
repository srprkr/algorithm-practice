class NumArray

=begin
    :type nums: Integer[]
=end
    def initialize(nums)
        @nums = nums
    end


=begin
    :type left: Integer
    :type right: Integer
    :rtype: Integer
=end
    def sum_range(left, right)
        pointer1 = left
        pointer2 = right        
        sum = 0

        result = []

        while pointer1 <= pointer2
            sum += @nums[pointer1]
            pointer1 += 1
        end

        sum
    end
end

# Your NumArray object will be instantiated and called as such:
# obj = NumArray.new(nums)
# param_1 = obj.sum_range(left, right)