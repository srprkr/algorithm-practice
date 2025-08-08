# @param {Integer} n
# @return {Float}
@memo = Array.new(200) { Array.new(200, nil) }

def soup_servings(n)
    return 1 if n >= 5000
    n = (n/25.0).ceil
    prob(n, n)
end

def prob(a, b)
    if a <= 0
        return b <= 0 ? 0.5 : 1
    elsif b <= 0
        return 0
    end
    return @memo[a][b] if @memo[a][b]

    # run each scenario and count outcomes
    # Scenario:
    # 100 from A, 0 from B
    option1 = prob(a - 4, b)    
    # 75 from A, 25 from B
    option2 = prob(a - 3, b - 1)  
    # 50 from A, 50 from B
    option3 = prob(a - 2, b - 2)
    # 25 from B 75 from B
    option4 = prob(a - 1, b - 3)
        
        # Outcome:
            # A runs out first
            # They run out at the same time
            # B runs out first
    @memo[a][b] = [option1, option2, option3, option4].sum / 4.0
end