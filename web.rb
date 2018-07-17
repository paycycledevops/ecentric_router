require 'sinatra'
require 'httparty'

post '/' do
  content_type :html
  response = HTTParty.post('https://64d9108d.ngrok.io/ecentric/authorise', body: params)
  return response.body
end
