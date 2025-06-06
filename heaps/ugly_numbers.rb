def is_ugly(n)
    return false if n <= 0
    [2,3,5].each do |factor|
        n /= factor while n % factor == 0
    end
    n == 1
end