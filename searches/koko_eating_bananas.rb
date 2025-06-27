def min_eating_speed(piles, h)
    left = 1
    right = piles.max

    puts piles

    def valid_speed(piles, spd) 
        piles.sum{ |num| (num.to_f / spd).ceil }
	  end

    while left < right
        mid = (left + right) / 2
        puts mid
        if valid_speed(piles, mid) > h
            left = mid + 1
        else
            right = mid
        end	
    end
    
    left
end