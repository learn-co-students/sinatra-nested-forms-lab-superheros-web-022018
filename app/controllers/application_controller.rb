require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do

      params[:team][:members].each do |details|
        Hero.new(details)
      end

      @heroes = Hero.all

      @motto = params[:team][:motto]
      @name = params[:team][:name]

      erb :team

    end



end
