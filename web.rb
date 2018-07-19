require 'sinatra'
require 'httparty'

post '/' do
  content_type :html
  response = HTTParty.post('https://paycyclestaging.herokuapp.com/ecentric/credit_card/capture_cvv', body: params)
  return response.body
end
