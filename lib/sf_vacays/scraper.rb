class SfVacays::Scraper
attr_accessor :title, :info

    def self.scrape_website
        @page = Nokogiri::HTML(open("https://www.appliedbehavioranalysisprograms.com/30-best-autism-friendly-vacation-ideas/"))
        @scraping_vacay = @page.css('div.entry-content')
    end

    def self.scrape_vacay
        @scraping_vacay.each do |ele|
            title = @page.search('h3').xpath('text()').each.with_index(1) do |vacay, i|
                puts "#{i}. #{vacay}".blue
            end   
        end
    end

    def self.scrape_details
        @scraping_vacay.each do |ele|
            info = @page.css("h3")

            info.each do |h|
                title = h.text
                descrip = h.next_element.text.each_line do |p|
                    puts p.green
                end 
            end                                  
        end
    end

end

