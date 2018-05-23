require 'sinatra'
require 'unirest'

get '/' do
  response = Unirest.get("https://api.chucknorris.io/jokes/random")
  @joke = response.body["value"]
  erb:"home"
end
