require 'rubygems'
require 'sinatra'

set :sessions, true
set :root, File.dirname(__FILE__)

get '/inline' do
  "Hi, directly from the action!"
end

get '/template' do
  erb :mytemplate
end

get '/nested_template' do
  erb :"/users/profile"
end

get '/nothere' do
  redirect '/inline'
end


get '/form' do
  erb :form
end

post '/myaction' do
  puts params['username']

end

get '/bootstrap' do
  erb :bootstrap
end
