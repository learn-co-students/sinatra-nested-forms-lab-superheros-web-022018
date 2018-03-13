require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    # Create a route that responds to a GET request at /.
    get '/' do
      erb :super_hero
    end
    post '/teams' do
      @team = params
      erb :team
    end

end
