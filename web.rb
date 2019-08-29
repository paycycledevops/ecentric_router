require 'sinatra'
require 'httparty'

post '/' do
  content_type :html
  query_string = params.map{ |p| p.join('=')}.join('&')
  redirect "#{ENV['REDIRECT_TO']}?#{query_string}"
end
