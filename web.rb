require 'sinatra'
require 'httparty'

post '/' do
  content_type :html
  response = HTTParty.post("#{ENV['DOMAIN']}/ecentric/credit_card/capture_cvv", body: params)
  #redirect "#{ENV['DOMAIN']}/ecentric/credit_card/capture_cvv?Token=#{params[:Token]}&UserID=#{params[:UserID]}"
  return response.body
end
