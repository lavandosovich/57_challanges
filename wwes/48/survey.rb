class Survey
  attr_reader :params

  def initialize(demand=nil)
    @params = if demand
      {:position=>get_position,:personal_key=>get_personal_key}
    else
      {
       :position=>"Saint Petersburg",
       :personal_key=>"f98bf7a8d4a59c0633eb28f61b1526ba"
      }
    end
  end
  private

  def get_position
    print "Where are you? "
    gets.chomp
  end

  def get_personal_key
    print "\nWrite yor personal key: "
    gets.chomp
  end

end
