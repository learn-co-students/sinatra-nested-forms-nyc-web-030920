class Ship
    attr_accessor :type, :booty
@@all =[]
    def initialize(type, booty)
        @type= type
        @booty= booty
        Ship.all << self
    end
    def self.all
        @@all
    end
end