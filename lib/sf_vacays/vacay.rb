class SfVacays::Vacay
    attr_accessor :title, :info, :vacay

    @@all = []
    
    def initialize(title, info=nil)
        @title = title
        @info = []
        @vacay = []
        @@all << vacay
        save
    end
    
    def self.all
        @@all
    end

    def self get_vacays
        SfVacays::Scraper.scrape_website
    end

    def save 
        @@all << self
    end

end