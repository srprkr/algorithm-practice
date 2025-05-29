def is_valid(s)
    stack = []
    pars = {
        "(" => ")",
        "{" => "}",
        "[" => "]"
    }

    s.each_char do |char|  
        stack << char if pars.key?(char)
        return false if pars.key(char) && pars.key(char) != stack.pop
    end

    stack.empty?
    
end