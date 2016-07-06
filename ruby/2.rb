puts "What is the input string?"
string = gets.chomp
true_answer ="#{string} has #{string.length} characters."
false_answer = "You must write correct answer!"
puts !string.empty? ?  true_answer : false_answer
