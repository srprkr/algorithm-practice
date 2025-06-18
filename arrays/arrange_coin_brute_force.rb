# You have n coins and you want to build a staircase with these coins. The staircase consists of k rows where the ith row has exactly i coins. The last row of the staircase may be incomplete.

# Given the integer n, return the number of complete rows of the staircase you will build.

def arrange_coins(n)
    
    # build an array, summing up spots until you hit (or go above) n
    array = []
    count = 0
    sum = 0

    while sum <= n
        count += 1
        array << count
        sum += count
    end


    # the complete row is going to be index + 1, so just return the current index because that's going to be one higher

    array.index(array.last)

end