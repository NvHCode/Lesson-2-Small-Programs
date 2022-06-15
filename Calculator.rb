# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts (answer)

#Walk-through solution

Kernel.puts ("Welcome to Calculator!")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp

Kernel.puts("What operation would you like to perform?
 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '3'
  result = number1.to_i() * number2.to_i()
else
  result = number1.to_f() / number2.to_f()
end

Kernel.puts("The result is #{result}")

# My own solution
loop do
  puts ">> Please input your first number."
  num1 = gets.chomp.to_i
  puts ">> Please input your second number."
  num2 = gets.chomp.to_i
  puts ">> What do you want to do?" \
    " 1) add, 2) subtract, 3) multiply, 4) divide?"
  operator = gets.chomp

 
  if operator == '1'
    result = num1 + num2
  elsif operator == '2'
    result = num1 - num2
  elsif operator == '3'
    result = num1 * num2
  else operator == '4'  
    result = num1.to_f / num2.to_f
  end

  puts "The result is #{result} "

  puts ">> Continue? (Y or N)"
  answer = gets.chomp
  break if   answer == 'N'
end