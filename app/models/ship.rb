class Ship
    attr_accessor :name, :type, :booty

    @@ships = []
    def initialize(params)
        @name = params[:name]
        @type = params[:type]
        @booty = params[:booty]
        @@ships << self
    end


    def self.all
        @@ships
    end

    def self.clear
        self.all.clear
    end
    

end