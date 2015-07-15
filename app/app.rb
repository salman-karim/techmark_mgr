require 'sinatra/base'
require './data_mapper_setup'
require 'data_mapper'

class TechmarkManager < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    'Hello TechmarkManager!'
  end

  get '/links' do

    erb :links
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
