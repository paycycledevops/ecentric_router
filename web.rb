require 'sinatra'
require 'httparty'

post '/' do
  content_type :html
  #response = HTTParty.post("#{ENV['DOMAIN']}/ecentric/credit_card/capture_cvv", body: params)
  query_string = params.map{ |p| p.join('=')}.join('&')
  redirect "#{ENV['DOMAIN']}/ecentric/credit_card/transaction_callback?#{query_string}"
  return response.body
end
