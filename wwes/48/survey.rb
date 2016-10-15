class Survey
  
  class << self
    def get_position
      print "Where are you? "
      gets.chomp
    end

    def get_personal_key
      print "\nWrite yor personal key: "
      gets.chomp
    end


    def initialize_by_quiestions
      @params={:position=>get_position,
               :personal_key=>get_personal_key}
    end

    def stock
      @params ={:position=>"Saint Petersburg",
                :personal_key=>"f98bf7a8d4a59c0633eb28f61b1526ba"}
    end

    def make
      puts "Stock or survey?\n"
      print ">"
      gets.chomp.downcase == 'stock' ? stock : initialize_by_quiestions
    end

  end

end
