require 'sinatra/base'

class Battleships < Sinatra::Base

# point the controller at the views file
set :views, Proc.new { File.join(root, '..', "views") }

  get '/' do
    erb :index
  end

  get '/name' do
  	erb :name
  end

  get '/waiting_room' do
  	erb :waiting_room
  	@name = params[:name]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
