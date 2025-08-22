# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    combined = (nums1 + nums2).sort
    len = combined.size
    middle_ind = len / 2

    if len.even?
        return ((combined[middle_ind]) + (combined[(middle_ind - 1)])) / 2.00000
    else
        return combined[middle_ind]
    end
end