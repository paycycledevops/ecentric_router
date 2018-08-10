require 'sinatra'
require 'httparty'

post '/' do
  redirect "#{ENV['DOMAIN']}/ecentric/credit_card/capture_cvv?Token=#{params[:Token]}&UserID=#{params[:UserID]}"
end
