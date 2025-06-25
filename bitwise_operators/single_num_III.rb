def single_number(nums)
    bitmask = nums.reduce(:^)

    diff = bitmask & (-bitmask)
    
    x = 0
    nums.each { |num| 
        x ^= num if !(num & diff).zero? 
        puts x
    }

    [x, bitmask ^ x]
end