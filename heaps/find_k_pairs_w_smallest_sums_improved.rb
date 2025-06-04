# Using min-heap to stop when the solution is found
def k_smallest_pairs(nums1, nums2, k)
    return [] if nums1.empty? || nums2.empty?
    
    result = []
    seen = Set.new
    heap = [[0,  0, nums1[0] + nums2[0]]]
    seen.add([0, 0])

    while heap.any? && result.size < k
        heap.sort_by! { |pair| pair[2] }
        i, j, _ = heap.shift

        result << [nums1[i], nums2[j]]
    
        if j + 1 < nums2.size && !seen.include?([i, j + 1])
            sum = nums1[i] + nums2[j + 1]
            heap << [i, j + 1, sum]
            seen.add([i, j + 1])
        end

        if i + 1 < nums1.size && !seen.include?([i + 1, j])
            sum = nums1[i + 1] + nums2[j]
            heap << [i + 1, j, sum]
            seen.add([i + 1, j])
        end
    end
    
    result
end