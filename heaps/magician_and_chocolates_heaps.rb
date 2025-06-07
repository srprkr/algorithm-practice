# Given N bags, each bag contains Bi chocolates. There is a kid and a magician. In one unit of time, kid chooses a random bag i, eats Bi chocolates, then the magician fills the ith bag with floor(Bi/2) chocolates.

# Find the maximum number of chocolates that kid can eat in A units of time.

# NOTE: 

#     floor() function returns the largest integer less than or equal to a given number.
#     Return your answer modulo 109+7

def max_chocolates(a, b)
    return 0 if b.empty? || a == 0
    
    # Keep array sorted in descending order
    heap = b.sort.reverse
    total = 0
    mod = 1000000007
    
    a.times do
        break if heap.empty?
        
        # Get maximum value from front of array
        curr_max = heap.shift
        total = (total + curr_max) % mod
        
        # Calculate half and insert while maintaining sorted order
        half = curr_max / 2
        if half > 0
            # Find insertion point
            insert_idx = heap.index { |x| x <= half } || heap.length
            heap.insert(insert_idx, half)
        end
    end
    
    total
end

