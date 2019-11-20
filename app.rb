require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      erb :index
    end
    get "/new" do 
      erb :"pirates/new" 
    end

    post "/pirates" do

      @pirate = Pirate.new(name:params[:pirate][:name],weight: params[:pirate][:weight], height:params[:pirate][:height])

      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end
      @ships = Ship.all 
      # binding.pry

      erb :"pirates/show"
    end
  end
end
