require 'sinatra/base'
require 'data_mapper'
require 'sinatra/flash'

require './app/data_mapper_setup.rb'

class TechmarkManager < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views') }

  enable :sessions, :static
  set :session_secret, 'super-secret'
  register Sinatra::Flash

  get '/' do
    erb :index
  end

  get '/links' do
    erb :links
  end

  get  '/user/new' do
    @user = User.new
    erb :'user/new'
  end

  post '/user' do
    @user = User.new(first_name: params[:first_name],
                    last_name: params[:last_name],
                    email: params[:email],
                    username: params[:username],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation]
                    )
    if @user.save
      session[:user_id] = @user.id
      redirect '/links'
    else
      flash.now[:errors] = @user.errors.full_messages
      erb :'user/new'
    end
  end

  post '/sessions' do
    session.clear
    flash[:notice] = 'Goodbye'
    redirect '/'
  end

  helpers do

    def current_user
      @user ||= User.get(session[:user_id])
    end

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
