def roman_to_int(s)

    
    special_nums = {
        'CM' => "900",
        'CD' => "400",
        'XC' => "90",
        'XL' => "40",
        'IX' => "9",
        'IV' => "4",
    }

    regular_nums = {
        'M' => 1000,
        'D' => 500,
        'X' => 10,
        'C' => 100,
        'L' => 50,
        'V' => 5,
        'I' => 1,
    }
    sums = []

    # variable = "MCMXC4" 
    # puts variable.gsub("X","") 
    # puts variable.gsub("C","") 


# MCMXC4


    
    # puts s.gsub("XC", "90")
    copy = s
    special_nums.each do |k,v|
        if s.include?(k) 
          s.gsub(k, "")
          sums << v
        end
    end

    puts s
    puts sums
  end