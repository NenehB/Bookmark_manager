require 'sinatra/base'
require 'sinatra/reloader'

class BookMark < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  get '/' do 
    'Welcome'
  end 

  get '/bookmarks' do 
  erb :index 
  end 
 run! if app_file == $0
end