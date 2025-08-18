# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
    res = []
    nums1.uniq.each do |n|
        nums2.include?(n) ? res << n : next
    end
    res
end