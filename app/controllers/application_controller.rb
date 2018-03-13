require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
    	erb :super_hero
    end

    post '/teams' do
    	@team = Team.new(params[:team][:name], params[:team][:motto])
    	params[:team][:members].each do |hero|
    		@team.members << Superhero.new(hero[:name], hero[:power], hero[:bio], @team)
    	end
    	erb :team
    end

end
