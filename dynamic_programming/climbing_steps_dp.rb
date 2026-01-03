def climbing_stairs(n)
    return 1 if n == 1
    return 2 if n == 2

    first, second = 1, 2

    (3..n).each do
        third = first + second
        first, second = second, third
    end

    return second
end