require 'sinatra'
require 'haml'
require 'sass'

configure do
  APP_TITLE = "app"
end

get '/' do
  haml :index
end

before do
  
end

helpers do

end

get '/javascripts/app.js' do
 coffee :app
end

get '/style.css' do
  scss :style
end

