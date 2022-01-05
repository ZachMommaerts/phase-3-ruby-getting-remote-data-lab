require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
    attr_accessor :url

    def initialize (string)
        @url = string
    end

    def get_response_body(url)
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
    end
end
