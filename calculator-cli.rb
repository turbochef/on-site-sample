require_relative 'calculator'

calculator = Calculator.new
puts "Welcome to Daniel Soetanto's reverse polish calculator!"
while true
    user_input = gets
    break if !user_input || user_input.chomp == 'q'
    puts calculator.solve_equation(user_input.chomp)
end
puts "exiting"