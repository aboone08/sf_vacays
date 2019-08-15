class SfVacays::Scraper

    attr_accessor :title, :info

    @@all = []

    def initialize(title=nil, info=nil)
        @title = title
        @info = info
    end

    def self.all
        @@all
    end

    def self.scrape_website
        @page = Nokogiri::HTML(open("https://www.appliedbehavioranalysisprograms.com/30-best-autism-friendly-vacation-ideas/"))       
        @page.css('h3').each do |el|
            title = el.text
            info = el.next_element.text
            vacay = SfVacays::Vacay.new(title, info) 
            @@all << vacay
        end       
    end 

end

