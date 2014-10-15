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
  	@name = params[:name]

	  	if @name.empty?
	 			return erb :name_error
	  	end

  	erb :waiting_room
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
