class SfVacays::Vacay
    attr_accessor :title, :info

    @@all = []
    
    def initialize(title=nil, info=nil)
        @title = title
        @info = info
        @@all << self
    end
    
    def self.all
        @@all
    end

    def save 
        @@all << self
    end

    def self.search_by_name(word)
        @@all.each { |vacay|
            if vacay.include?(word)
                puts vacay 
            end
        }
    end

end