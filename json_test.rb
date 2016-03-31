
require 'rest-client'
require 'json'
 
url = 'localhost:3000/bars'
response = RestClient.get(url)
puts JSON.parse(response)

