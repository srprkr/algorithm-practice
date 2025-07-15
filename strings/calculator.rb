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

def calculate num1, num2, operator
  # Error handling for negative numbers
  return "Sorry, you can only use non-negative numbers" if num1 < 0 || num2 < 0

  # Handling allowed operators
  allowed_operators = ['+', '-']
  raise "Invalid Operator" unless allowed_operators.include?(operator)


  operator_map ={
    '+' => :+,
    '-' => :-,
  }

  # determine which operator function to run
  num1.send(operator_map[operator], num2)

end

puts calculate(1, 3, "+")
puts calculate(1, 3, "-")
puts calculate(-1, 3, "+")


# Test error handling
begin
  calculate(1, 3, "*")
rescue => e
  puts "Error: #{e.message}"
end