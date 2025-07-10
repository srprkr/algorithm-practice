def my_sqrt(x)
    return 0 if x.zero?
    return 1 if x < 4
    
    left = 0
    right = x
    
    while left <= right
        mid = (left + right) / 2
        if mid * mid == x
            return mid
        elsif mid * mid < x    
            left = mid + 1
        else
            right = mid - 1
        end
         
    end

    right
end