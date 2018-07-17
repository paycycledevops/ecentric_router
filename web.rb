require 'sinatra'
require 'httparty'

post '/' do
  response = HTTParty.post('https://64d9108d.ngrok.io/ecentric/authorise', body: params)
  puts response.body
end
