require 'sinatra/base'
require './app/data_mapper_setup'
require 'data_mapper'

class TechmarkManager < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    'Hello TechmarkManager!'
  end

  get '/links' do
    @links = Link.all
    erb :'links/links'
  end

  get '/links/new' do
    erb :'links/new'
  end

  # post '/links/new' do
  #   Link.create(url: params[:URL], title: params[:title], description: params[:description])
  #   Category.create(category: params[:category])
  # redirect to('/links')
  # end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
