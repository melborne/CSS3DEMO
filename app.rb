require 'sinatra'
require 'haml'
require 'sass'

configure do
  APP_TITLE = "CSS3DEMO"
end

configure :development do
  get '/javascripts/app.js' do
   coffee :app
  end
end

get '/' do
  haml :index
end

get '/style.css' do
  scss :style
end

