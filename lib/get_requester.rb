# Write your code here
require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
    attr_accessor :string_url

    def initialize(string_url)
        self.string_url = string_url
    end

    def get_response_body
        uri = URI.parse(self.string_url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        JSON.parse(self.get_response_body)
    end
end
