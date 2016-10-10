require_relative "website_generator_43"


hash = {}

puts "Site name: "
hash[:name] = gets.chomp
puts "Author: "
hash[:author] = gets.chomp

puts "Do you want a folder for JavaScript?"
line =  gets.chomp
hash[:js] = line if line !='n'
puts "Do you want a folder for CSS?"
line =  gets.chomp
hash[:css] = line if line != 'n'

WebSiteGenerator.create(hash)
