class Pirate
    #name, weight and height, and @@all
    attr_reader :name, :weight, :height
    @@all = [ ]
    
    def initialize(params)
        @name = params[:name]
        @weight = params[:weight]
        @height = params [:height]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        self.all.clear
    end
end