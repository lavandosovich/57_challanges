require_relative 'forecast'
survey = Survey.new.params
forecast = Forecast.new(APItoJSON.hash(survey))

puts "#{survey[:position]} weather:\n
#{forecast.tempreture} degrees Celsius
#{forecast.wind} m/s wind speed
#{forecast.pressure} pressure
About the sky: #{forecast.cloudy?}"
