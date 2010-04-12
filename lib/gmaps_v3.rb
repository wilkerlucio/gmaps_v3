require 'cgi'
require 'simplehttp'
require 'json'

class GmapsV3
  HTTP_HOST = 'maps.google.com'
  
  def self.geocode_information(address)
    JSON.parse SimpleHttp.get("http://#{HTTP_HOST}/maps/api/geocode/json?address=#{CGI::escape address}&sensor=false")
  end
end