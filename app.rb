require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      erb :new
    end

    post '/pirates' do
      pirates= params["pirate"]
      ships = pirates["ships"]
 
      @pirate = Pirate.new(pirates["name"], pirates["weight"], pirates["height"])
      ships.each do |ship|

        Ship.new(ship["type"], ship["booty"])
      end
      erb :show
      end
    end
  end

