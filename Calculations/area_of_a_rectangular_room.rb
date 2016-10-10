puts "What is the length o the room in feet?"
length = gets.chomp.to_i
puts "What is the width of the room in feet?"
width = gets.chomp.to_i
area_feet = length*width
area_meters = area_feet * 0.305**2
puts "You entered dimensions of #{length} feet by #{width} feet."
puts "The area is:\n #{area_feet} square feet \n #{area_meters} square meters "
