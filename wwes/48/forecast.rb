require_relative 'survey'
require_relative 'api_to_json'

class Forecast
    attr_reader :hash

    def initialize(hash)
      @forecast||=hash
    end

    def tempreture
      (@forecast["list"][0]["main"]["temp"] - 273.0).round(2)
    end

    def pressure
      @forecast["list"][0]["main"]["pressure"]
    end

    def humidity
      @forecast["list"][0]["main"]["humidity"]
    end

    def cloudy?
      @forecast["list"][0]["weather"][0]["main"]
    end

    def wind
      @forecast["list"][0]["wind"]["speed"]
    end
end
