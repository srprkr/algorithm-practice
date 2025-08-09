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



# We want to allow students to use variables when entering expressions in the calculator. In addition to the formula string, we will add a new input to our function that holds variables and their values:
#     {"e": 8, "y": 7, "pressure": 5}
# and our string inputs now have a format like
#     "(e+3)-(pressure+temperature)+2".
    
# Evaluate the formula result as fully as possible using the input variables. It is possible that not all variables have known values, in which case you should preserve them in the output.

# Sample input:
#     variables = {"e": 8, "y": 7, "pressure": 5}
#     expression = "(e+3)-(pressure+temperature)+2"

# (11)-(5+temperature)+2
# 11-5-temperature+2
# 8-temperature

# ((9-1) + 6) -> 14
# (9 - (1 + 6)) -> 2

# Sample output:
#     "8-temperature"

# n: length of the input string
# """
# expression = "(e+3)-(pressure+temperature)+2"
# variables = {
#   "e": 8,
#   "y": 7,
#   "pressure": 5
# }


def calculate expression

  variables = {
    "e": 8,
    "y": 7,
    "pressure": 5
  }

  while expression.include?('(')
    expression = expression.gsub(/\([^()]+\)/) { |match| helper_calculate(match[1..-2], variables).to_s }
  end

  helper_calculate(expression, variables)
end

def helper_calculate(expression, variables)
  expression = expression.gsub(/--/, '+')

  parts = expression.strip.split(/([+\-])/)



  
  parts.map! do |part|
    part if part == "+" || part == "-"

    if variables.key?(part)
      variables[part].to_s
    else
      part.to_s
    end
  end


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


puts calculate("(e+3)-(pressure+temperature)+2")

# puts calculate("5+16-((9-6)-(4-2))+1") # 21
# puts calculate("22+(2-4)") # 20
# puts calculate("6+9-12") # 3
# puts calculate("((1024))") # 1024
# puts calculate("1+(2+3)-(4-5)+6") # 13
# puts calculate("255") # 255


# Test error handling
begin
  calculate("(1*3)")
rescue => e
  puts "Error: #{e.message}"
end


# How much time have I spent, end-to-end? 
#   2.5 hours
# What were the trickiest aspects? Where did you lose the most time?
#   Getting the string manipulation/regex right
# What are some lessons/insights I gained from this problem?
#   While I'm supposed to ignore negatives. There is a case where a double minus happens and converting it to a + is the correct solution.
# What would I do differently if I had extra time? What’s remaining to improve?
#   Study up easier to read pattern matching that isn't regex and use that.
# What did I do well?
#   Hashes, arrays and figuring out the send method as the main piece of the puzzle.
# Did you use any hints, if yes, what? (please do not give up and look up the hints quickly. if you do need to look up the hints, only use the ones given on the problem page one by one, and DON'T look at youtube videos or full solutions, until you try really hard)
# I got the basic calculations down in a 
# How difficult was the problem (1 super trivial, 10 extremely difficult) (answer this question three times separately for 
  # a) implementing quickly: 6
  # b) finding the right approach: 4 for calculator with approved operators, 7 for string manipulation 
  # c) overall): 6
# What's the time & space complexity?
  # T: O(n) best case, O(m*n) worst case
  # S: O(n)



# First version w/o string manipulation

# def calculate_params num1, num2, operator
#   # Error handling for negative numbers
#   return "Sorry, you can only use non-negative numbers" if num1 < 0 || num2 < 0

#   # Handling allowed operators
#   allowed_operators = ['+', '-']
#   raise "Invalid Operator" unless allowed_operators.include?(operator)


#   operator_map ={
#     '+' => :+,
#     '-' => :-,
#   }

#   # determine which operator function to run
#   num1.send(operator_map[operator], num2)

# end

# puts calculate_params(1, 3, "+")
# puts calculate_params(1, 3, "-")
# puts calculate_params(-1, 3, "+")


# # Test error handling
# begin
#   calculate_params(1, 3, "*")
# rescue => e
#   puts "Error: #{e.message}"
# end