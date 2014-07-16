###!/Users/martin/.rvm/rubies/ruby-2.0.0-p481/lib/ruby/2.0.0/ruby

meal = 25
tax = 10
tip = 2

### End of user editable section ###

# Make sure there is a float in the calc or only int's will be returned
# Use divide by 100.00, something like: meal = meal.to_f, or num.fdiv(num2)

tax_value = meal * tax / 100.00
meal_with_tax = meal + tax_value
tip_value = meal * tip / 100.00
total_cost = meal_with_tax + tip_value



puts "The pre-tax cost or your meal was $#{meal}"
puts "At #{tax}%, tax for this meal is $#{tax_value}"
puts "For a #{tip}% tip, you should leave $#{tip_value}"
puts "The grand total for this meal is then $#{total_cost}"
#puts "2: The grand total for this meal is then $#{sprintf("%0.02f", total_cost)}"
