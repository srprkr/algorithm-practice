# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
    def binary_search(arr)
        left, right = 0, arr.size - 1
        
        while left <= right
            mid = (left + right) / 2
            if arr[mid] == 1
                left = mid + 1
            else
                right = mid - 1
            end
        end
        
        left
    end
    
    # Create min heap with soldier count and row index
    min_heap = Containers::MinHeap.new
    
    mat.each_with_index do |row, idx|
        soldiers = binary_search(row)
        min_heap.push([soldiers, idx])
    end
    
    # Get k smallest elements
    result = []
    k.times do
        result << min_heap.pop[1]
    end
    
    result
end