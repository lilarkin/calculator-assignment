require 'pry'

@operators = ['+', '-', '*', '/']

puts 'Welcome to the Ruby Calculator'

puts 'What is the first Number?'
begin 
  first_num = gets.chomp
  first_num = Float(first_num)
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

puts 'What is the second Number?'

def get_second_number
  begin 
    @second_num = gets.chomp
    @second_num = Float(@second_num)
  rescue
    puts 'Please enter a number.'
    retry
  end
end

get_second_number

if @operator == '/' && @second_num == 0
  puts 'You cannot divide by 0. Enter another number.'
  get_second_number
end

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

calculate(first_num, @operator, @second_num)


