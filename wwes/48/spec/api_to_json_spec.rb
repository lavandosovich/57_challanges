require_relative '../exec.rb'


describe 'APItoJSON' do

  describe 'self.assemble_url' do
    it "should return valid url" do
      url = "http://api.openweathermap.org/data/2.5/forecast/city?q=Moscow&APPID=asfkl032f"
      expect(APItoJSON.assemble_url(
      {:position=>"Moscow",
       :personal_key=>"asfkl032f"})).to match(url)
    end
  end

  describe ' self.hash' do
    it "should provide hash" do
      expect(APItoJSON.hash(Survey.new.params).class).to match(Hash)
    end
  end
end
