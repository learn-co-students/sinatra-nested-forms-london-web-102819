require "./environment"

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
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |d|
        Ship.new(d)
      end
      @ships = Ship.all
      @ship1 = @ships[0]
      @ship2 = @ships[1]

      erb :"pirates/show"
    end

    get "/pirates/show" do
      erb :"pirates/show"
    end
  end
end
