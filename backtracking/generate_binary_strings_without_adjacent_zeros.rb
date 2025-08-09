def valid_strings(n)
    @result = []
    backtrack([], n)
    @result
end

def backtrack(current, n)
    if current.size == n
        @result << current.join 
        return
    end

    current.push("1")
    backtrack(current, n)
    current.pop

    if current.empty? || current.last != "0"
        current.push("0")
        backtrack(current, n)
        current.pop
    end
end