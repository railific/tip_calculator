## #!/ where the fuck is the interpreter on a mac?
require 'bigdecimal'
require 'bigdecimal/util'

meal = 25.10
tax = 10
tip = 2

### End of user editable section ###


# Originally used floats, but that's a bad idea for decimal currency
# bigdecimals do a better job of handling base 10.

tax_value = meal.to_d * tax.to_d / 100.to_d
meal_with_tax = meal.to_d + tax_value.to_d
tip_value = meal.to_d * tip.to_d / 100.to_d
total_cost = meal_with_tax + tip_value



puts "The pre-tax cost or your meal was $#{sprintf("%0.02f", meal)}"
puts "At #{sprintf("%0.02f", tax)}%, tax for this meal is $#{sprintf("%0.02f", tax_value)}"
puts "For a #{sprintf("%0.02f", tip)}% tip, you should leave $#{sprintf("%0.02f", tip_value)}"
puts "The grand total for this meal is then $#{sprintf("%0.02f", total_cost)}"
