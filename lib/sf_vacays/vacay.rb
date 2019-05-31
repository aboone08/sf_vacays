class SfVacays::Vacay
    attr_accessor :name, :price, :url, :location
    def self.transport
        # I should return a bunch of instances of Vacay
        #puts <<-DOC.gsub /^\s*/, ''
        #1. Destination Name - $Price - Location 
        #2. Destination Name - $Price - Location 
        #DOC
        
        vacay_1 = self.new
        vacay_1.name = "Destination One"
        vacay_1.price = "$"
        vacay_1.url = "http://url.com"
        vacay_1.location = "TX"

        vacay_2 = self.new
        vacay_2.name = "Destination One"
        vacay_2.price = "$"
        vacay_2.url = "http://url.com" 
        vacay_2.location = "FL"

        [vacay_1, vacay_2]
    end
end