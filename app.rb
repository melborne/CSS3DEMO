require 'sinatra'
require 'haml'
require 'sass'

configure do
  APP_TITLE = "CSS3DEMO"
end

get '/' do
  haml :index
end

get '/javascripts/app.js' do
 coffee :app
end

get '/style.css' do
  scss :style
end

