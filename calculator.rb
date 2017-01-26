
@operators = ['+', '-', '*', '/']

puts 'Welcome to the Ruby Calculator'

puts 'What is the first Number?'
begin 
  first_num = gets.chomp
  first_num = Integer(first_num)
rescue
  puts 'Please enter a number.'
  retry
end

puts 'What is the Operator?'

def is_operator
  @operator = gets.chomp
  if !@operators.include? @operator
    puts 'This calculator only supports +, -, *, and /'
    puts 'Please enter an operator.'
    is_operator
  end
end

is_operator

if @operator == '/'
  #then second_num cannot be zero





puts 'What is the second Number?'
begin 
  second_num = gets.chomp
  second_num = Integer(second_num)
rescue
  puts 'Please enter a number.'
  retry
end

# I need to check errors
# input errors for numbers and functions
# mathematical errors, i.e., cannot divide by 0

# def equation(left_num, operator, right_num)
# end

def calculate(left_num, op, right_num)
  case op
    when '+'
      result = left_num + right_num
    when '-'
      result = left_num - right_num
    when '*'
      result = left_num * right_num
    when '/'
      result = left_num / right_num
    else
      'Invalid operator'
  end
  puts 'Calculating...'
  sleep(0.5)
  puts "The result of #{left_num} #{op} #{right_num} is:"
  puts result 
end

calculate(first_num, @operator, second_num)


