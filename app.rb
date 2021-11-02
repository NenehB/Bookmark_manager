require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bookmark_manager'

class BookMark < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  get '/' do
    'Welcome'
  end

  get '/bookmarks' do
    @bookmarks = BookMarkManager.all
    erb :index
  end

  run! if app_file == $PROGRAM_NAME
end
