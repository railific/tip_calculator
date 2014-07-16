## #!/ where the fuck is the interpreter on a mac?
require 'bigdecimal'
require 'bigdecimal/util'

meal = 25.10
tax = 10.5
tip = 0.9

### End of user editable section ###


# Originally used floats, but that's a bad idea for decimal currency
# bigdecimals do a better job of handling base 10.

tax_value = meal.to_d * tax.to_d / 100.to_d
meal_with_tax = meal.to_d + tax_value.to_d
tip_value = meal.to_d * tip.to_d / 100.to_d
total_cost = meal_with_tax + tip_value



puts "The pre-tax cost of your meal was $%0.02f." % [meal]
puts "At %0.2f%%, tax for this meal is $%0.2f." % [tax, tax_value]
puts "For a %0.02f%% tip, you should leave $%0.02f." % [tip, tip_value]
puts "The grand total for this meal is then $%0.02f." % [total_cost]
