require 'sinatra/base'

class Battleships < Sinatra::Base

set :views, Proc.new { File.join('..', root, "templates") }

  get '/' do
    'Hello Battleships!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
