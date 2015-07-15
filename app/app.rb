require 'sinatra/base'

class TechmarkManager < Sinatra::Base
  get '/' do
    'Hello TechmarkManager!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
