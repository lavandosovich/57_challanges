puts "What is the first number?"
first = gets.chomp
puts "What is the second number?"
second = gets.chomp
puts "Math operation:"
operation = gets.chomp

true_scenario = first+operation+second+"= #{eval(first+operation+second)}"

puts first.to_i >= 0 && second.to_i >= 0 ? true_scenario : " Please, insert numbers!"
