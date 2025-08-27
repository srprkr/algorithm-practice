require 'algorithms'

def find_closest_elements(arr, k, x)
    left = 0
    right = arr.size - k

    while left < right
        mid = (left + right) / 2
        if x - arr[mid] > arr[mid + k] - x
            left = mid + 1
        else
            right = mid
        end
    end
    
    return arr[left...left + k]
end