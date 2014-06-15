require 'sinatra'

set :bind, '0.0.0.0'

get '/translate' do
  erb :translate
end

post '/translate' do
  erb :result
end
