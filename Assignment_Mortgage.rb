# # Assignment information

# NECESSARY INPUT
  # - The loan amount (p)
  # - The Annual Percentage Rate (APR) num / 100
  # - The loan duration in years (y)

# NECESSARY OUPUT
  # From the info given calculate
  # - Monthly interest rate (j)
  # - loan duration in months (n)
  # - Monthly payment (m)

# PROCESS
  # request necessary input from client.
  # provide necessary output

# START
# - greet customer
# collect necessary input
# - provide overview of the required information
# - prompt user to provide the loan amount
# - prompt user to provide APR
# - prompt user to provide loan duration

# - confirm loan amount
# - confirm APR
# - confirm loan duration

# provide necessary output
  #  - calculate Monthly interest rate (APR * 12)
  # - provide Monthly interest rate (J) 
  # = annual_percentage_rate / 100 / 12 * 100
  # - calculate loan duration in months ((y) * 12)
  # - provide loan duration in months (n)
  # - calculate monthly payment (m = p * (j / (1 - (1 + j)**(-n))))
  # - provide Monthly payment (m)

  # Stages of coding
  # 1.rough code
  # 2.touch up
   # NEXT TASK WRITE THE PROGRAM


loop do
     loan_amount = nil
     annual_percentage_rate = nil
     loan_duration = nil

    puts ">> Welcome, please enter your name"
    name = gets.chomp
    puts ">> Hello #{name}"

    puts " To calculate your loan, we need the following information:
            1. loan amount
            2. The Annual Percentage Rate (APR)
            3. The loan duration in years"
  loop do
    puts ">> Please provide the amount you want to loan? "
    loan_amount = gets.chomp.to_i
    break if loan_amount > 0
    puts "The loan amount can't be a negative number. Please try again."
  end

  loop do
    puts ">> Please provide the Annual Percentage Rate. "
    annual_percentage_rate = gets.chomp.to_i
    break if annual_percentage_rate > 0 
    puts "The APR can't be a negative number. Please try again."
  end

  loop do
    puts ">> Please provide the loan duration in years. "
    loan_duration = gets.chomp.to_i
    break if loan_duration > 0 
    puts "The loan duration can't be a negative number. Please try again."
  end

  puts "Overview:
        1. Your loan amount is $#{loan_amount} 
        2. Your APR is #{annual_percentage_rate}%
        3. Your loan duration is #{loan_duration} years"

  puts ">> Result:"
  monthly_interest_rate = (annual_percentage_rate.to_f / 100) / 12
  monthly_interest_rate_percentage = (monthly_interest_rate * 100.to_f).round(2)
  puts "Your monthly interest rate is #{monthly_interest_rate_percentage}%"

  loan_duration_in_months = loan_duration.to_i * 12
  puts "Your loan duration in months is #{loan_duration_in_months}"

  monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(- loan_duration_in_months)))
  monthly_payment = monthly_payment.round(2)
  puts "Your monthly payment is $#{monthly_payment}"

  puts ">> Do you want to make another calculation? (Y/N)"
  answer = gets.chomp
  break if answer == 'N'
end

puts "Thank you, goodbye."
