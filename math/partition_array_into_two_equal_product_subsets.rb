# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
def check_equal_partitions(nums, target)
    # Calculate total product and length
    product = nums.reduce(:*)
    length = nums.length
    
    # Early return if product isn't target squared
    return false if product != target ** 2
    
    # Helper method for recursive checking
    def find_subset(nums, total, index, target, length)
        # Base cases
        return true if total == target
        return false if total > target || index == length
        
        # Try including or excluding current number
        find_subset(nums, total, index + 1, target, length) ||
        find_subset(nums, total * nums[index], index + 1, target, length)
    end
    
    # Start recursive search
    find_subset(nums, 1, 0, target, length)
end