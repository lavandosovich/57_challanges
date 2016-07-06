puts "What is your current age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
dream_age = gets.chomp.to_i

diff_age = dream_age  - age
year_today = Time.now.year

puts diff_age >=  0 ?
 "You have #{diff_age} years left until you can retire.\n
      It's #{year_today}, so you can retire in #{year_today + diff_age}" :
 "You must be retired #{diff_age*(-1)} years ago in #{year_today + diff_age}."
