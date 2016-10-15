require_relative "../exec.rb"

describe "Forecast" do
  describe "#tempreture" do
    it "should be Float" do
      expect(Forecast.new(APItoJSON.hash(Survey.make)).tempreture.class).to match(Float)
    end
  end
end
