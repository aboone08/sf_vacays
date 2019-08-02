class SfVacays::Scraper

    def self.scrape_website
        @page = Nokogiri::HTML(open("https://www.appliedbehavioranalysisprograms.com/30-best-autism-friendly-vacation-ideas/"))
        destination = @page.css('h3')
    end  

end

