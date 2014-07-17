## #! path to intepreter here...

require 'bigdecimal'
require 'bigdecimal/util'


#tax = 10.5
#tip = 0.9

### End of user editable section ###

puts "\nPlease enter the meal cost before tax"
meal = gets.chomp.to_d
puts "Please enter the tax percentage you wish to pay"
tax = gets.chomp.to_d
puts "Please enter the tip percentage you wish to pay"
tip = gets.chomp.to_d



tax_value = meal.to_d * tax.to_d / 100
meal_with_tax = meal.to_d + tax_value.to_d
tip_value = meal.to_d * tip.to_d / 100
total_cost = meal_with_tax + tip_value



puts "\nThe pre-tax cost of your meal was $%0.02f." % meal
puts "At %0.1f%%, tax for this meal is $%0.2f." % [tax, tax_value]
puts "For a %0.1f%% tip, you should leave $%0.2f." % [tip, tip_value]
puts "The grand total for this meal is then $%0.2f.\n\n" % total_cost

