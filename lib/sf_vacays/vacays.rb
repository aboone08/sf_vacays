class SfVacays::Vacay
    attr_accessor :title, :info

    @@all = []
    
    def initialize(title, info=nil)
        @title = title
        @info = info
        @@all << vacay
    end
    
    def self.all
        @@all
    end
end