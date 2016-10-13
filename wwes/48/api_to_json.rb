require 'httparty'
require 'json'

class APItoJSON
    include HTTParty
    include JSON

    def self.hash(query_params)
        json_to_hash(query_params)
    end

    protected

    def self.json_to_hash(query_params)
        JSON.parse(connect_to_api(query_params))
    end
    def self.connect_to_api query_params
        HTTParty.get(assemble_url(query_params)).body
    end
    def self.assemble_url query_params={}
        url = "http://api.openweathermap.org/data/2.5/forecast/city?q=[position]&APPID=[personal_key]"
        url.gsub!('[position]',query_params[:position])
        url.gsub!('[personal_key]',query_params[:personal_key])
        url
    end
end
