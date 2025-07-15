# You are building a simple calculator. The calculator will only allow addition and subtraction of non-negative integers.

# We also want to allow parentheses in our input. Given an expression string using the "+", "-", "(", and ")" operators like "5+(16-2)", write a function to parse the string and evaluate the result.

# Sample output:
#   calculate("5+16-((9-6)-(4-2))+1") => 21
#   calculate("22+(2-4)") => 20
#   calculate("6+9-12") => 3
#   calculate("((1024))") => 1024
#   calculate("1+(2+3)-(4-5)+6") => 13
#   calculate("255") => 255

# n: length of the input string

def calculate expression
  while expression.include?('(')
    expression = expression.gsub(/\([^()]+\)/) { |match| helper_calculate(match[1..-2]).to_s }
  end

  helper_calculate(expression)
end

def helper_calculate(expression)
  expression = expression.gsub(/--/, '+')

  parts = expression.strip.split(/([+\-])/)

  #  Handle single numbers (no operators)
  return parts[0].to_i if parts.size == 1

  result = parts[0].to_i

  i = 1
  while i < parts.size
    operator = parts[i]
    num = parts[i + 1].to_i


    # num1, operator, num2 = parts[0].to_i, parts[1], parts[2].to_i
    
    # Handling allowed operators and convert to something actionable
    operator_map = {
      "+" => :+,
      "-" => :-,
    }

    # Error handling for approved operators
    method_symbol = operator_map[operator]
    raise "Invalid Operator" unless method_symbol

    # # Error handling for negative numbers
    # return "Sorry, you can only use non-negative numbers" if num < 0

    # Do maths: the line doing this method's heavy lifting
    result = result.send(method_symbol, num)

    i += 2
  end
  
  result
end


puts calculate("5+16-((9-6)-(4-2))+1") # 21
puts calculate("22+(2-4)") # 20
puts calculate("6+9-12") # 3
puts calculate("((1024))") # 1024
puts calculate("1+(2+3)-(4-5)+6") # 13
puts calculate("255") # 255


# Test error handling
begin
  calculate("(1*3)")
rescue => e
  puts "Error: #{e.message}"
end