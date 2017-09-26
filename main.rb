require 'sinatra'

set :port, 3000
set :public_folder, File.dirname(__FILE__) + '/public'
set :views, File.dirname(__FILE__) + '/views'

get '/' do
  @message = "Durante el día de hoy estaré en Plaza de Armas"
  erb :index, :layout => :layout
end

get '/users' do
  "Usuarios"
end

get '/users/:username' do
  "Profile #{params['username']}"
end
