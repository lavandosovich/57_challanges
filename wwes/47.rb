require "httparty"
require "json"




class Austranauts
    include HTTParty
    include JSON

    $response = JSON.parse(
    HTTParty.get('http://api.open-notify.org/astros.json').body)["people"]

    def self.in_space
      left_size = $response.sort{|one,two| one["name"].size<=>two["name"].size }.last["name"].size+2
      right_size = $response.sort{|one,two| one["craft"].size<=>two["craft"].size }.last["craft"].size-1
      puts "There are #{$response.size} people in space right now:\n\n"
      puts "Name"+' '*(left_size-'Name'.size)+"| Craft"+' '
      puts  '-'*(left_size+right_size+3)

        $response.each do |men|

          print "#{men["name"]}"
          print ' '*(left_size-men["name"].size)
          print "| #{men["craft"]}\n"

        end
    end
end


puts Astranauts.in_space
