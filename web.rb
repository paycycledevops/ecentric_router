require 'sinatra'
require 'httparty'

post '/' do
  content_type :html
  response = HTTParty.post("#{ENV['DOMAIN']}/ecentric/credit_card/capture_cvv", body: params)
  return response.body
end
