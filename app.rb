require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bookmark_manager'
require './database_connection_setup'

class BookMark < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  get '/' do
    'Welcome'
  end

  get '/bookmarks' do
    bookmark_list = BookMarkManager.all
    @bookmarks_formatted = bookmark_list.join('<br>')
    erb :index
  end

  run! if app_file == $PROGRAM_NAME
end
