require 'sinatra'
require 'httparty'

post '/' do
  respnse = HTTParty.post('https://64d9108d.ngrok.io/ecentric/authorise', body: params)
  puts response.body
end
