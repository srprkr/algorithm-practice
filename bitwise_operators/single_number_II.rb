def single_number(nums)
    once, twice = 0, 0
    nums.each do |num|
        once = (once ^ num) & ~twice
        twice = (twice ^ num) & ~once
    end
end