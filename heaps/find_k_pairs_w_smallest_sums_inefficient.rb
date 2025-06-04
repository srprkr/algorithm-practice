# Broken... too space complex.
def k_smallest_pairs(nums1, nums2, k)
    result = []
    
    nums1.each do |n1|
        nums2.each do |n2|
            result << [n1, n2, n1 + n2]
        end
    end
    
    result.sort_by!{|pair| pair[2]}
      .take(k)
      .map{|pair| [pair[0], pair[1]]}
end