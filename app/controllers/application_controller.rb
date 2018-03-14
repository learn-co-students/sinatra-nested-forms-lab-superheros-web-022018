require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

      get '/' do
        erb :super_hero
      end

      post '/team' do
        @team = Team.new(params[:team])
        # binding.pry
        params[:team][:heros].each do |hero|
          Hero.new(hero)
        end

        @heros = Hero.all
        # binding.pry
        erb :team
      end

end
