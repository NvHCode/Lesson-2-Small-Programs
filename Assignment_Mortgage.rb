# assignment_information

# REQUIRED INPUT
# - The loan amount (p)
# - The Annual Percentage Rate / interest rate (APR) num / 100
# - The loan duration in years (y)

# REQUIRED OUPUT
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
# 2.refactoring
# NEXT TASK refactoring
require 'yaml'
MESSAGES = YAML.load_file('Assignment_Mortgage.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  prompt(MESSAGES['welcome'])
  prompt('info_overview')

  loan_amount = nil
  loop do
    prompt(MESSAGES['loan'])
    loan_amount = gets.chomp.to_f

    break if loan_amount > 0
    prompt(MESSAGES['error'])
  end

  annual_interest_rate = nil
  loop do
    prompt(MESSAGES['interest_rate'])
    prompt("Example: 5 for 5% or 2.5 for 2.5%")
    annual_interest_rate = gets.chomp.to_f

    break if annual_interest_rate > 0
    prompt(MESSAGES['error'])
  end

  loan_duration_in_years = nil
  loop do
    prompt(MESSAGES['loan_duration'])
    loan_duration_in_years = gets.chomp.to_f

    break if loan_duration_in_years > 0
    prompt(MESSAGES['error'])
  end

  # prompt(MESSAGES['input_overview'])

  prompt("Result:")
  annual_interest_rate = (annual_interest_rate.to_f / 100)
  monthly_interest_rate = annual_interest_rate / 12
  monthly_interest_rate_percentage = (monthly_interest_rate * 100.to_f).round(2)

  prompt("Your monthly interest rate is #{monthly_interest_rate_percentage}%")

  loan_duration_in_months = loan_duration_in_years.to_i * 12
  prompt("Your loan duration is #{loan_duration_in_months} months")

  monthly_payment = loan_amount *
                    (monthly_interest_rate /
      (1 - (1 + monthly_interest_rate)**(- loan_duration_in_months)))

  # rounding up monthly payment to two decimals
  monthly_payment = monthly_payment.round(2)
  prompt("Your monthly payment is $ #{monthly_payment}")

  prompt(MESSAGES['another'])
  answer = gets.chomp.downcase
  break if answer == 'n'
end

prompt("Thank you, goodbye.")
