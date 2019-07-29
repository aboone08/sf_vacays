class SfVacays::Scraper
attr_accessor :title, :info

    @@all = []
    
    def initialize(title, info=nil)
        @title = title
        @info = info
    end

    def self.all
        @@all
    end

    def self.scrape_website
        @page = Nokogiri::HTML(open("https://www.appliedbehavioranalysisprograms.com/30-best-autism-friendly-vacation-ideas/"))
        @scraping_vacay = @page.css('div.entry-content')
    end

    def self.scrape_vacay
        @scraping_vacay.each do |ele|
            title = @page.search('h3').xpath('text()').each.with_index(1) do |vacay, i|
                puts "#{i}. #{vacay}".blue
            end

            vacay = self.new(title)
    
            @@all << vacay        
        end
    end

    def self.scrape_description
        @scraping_vacay.each do |ele|
            h3_tags = @page.css("h3") 

            h3_tags.each do |h|
                name = h.text
                descrip = h.next_element.text
            end
        end
    end

end

