# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    i = nums1.size - 1
    m -= 1
    n -= 1

    while i >= 0 && n >= 0
        if m >= 0 && nums1[m] > nums2[n]
            nums1[i] = nums1[m]
            m -= 1
        else
            nums1[i] = nums2[n]
            n -= 1
        end
        i -= 1
    end    
end