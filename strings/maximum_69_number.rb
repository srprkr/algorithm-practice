# @param {Integer} num
# @return {Integer}
def maximum69_number (num) 
    if num.to_s.include?("6")
        num.to_s.sub!("6", "9").to_i 
    else
        num
    end
end