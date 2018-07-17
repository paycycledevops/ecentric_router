require 'sinatra'
require 'httparty'

post '/' do
  HTTParty.post('https://64d9108d.ngrok.io/ecentric/authorise', body: params)
  status 200
end
