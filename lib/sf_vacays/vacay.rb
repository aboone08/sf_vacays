class SfVacays::Vacay
    attr_accessor :title, :info
    def self.destinations
        # Scrape website and then return vacay info based on that data
        self.scrape_vacays
    end

    def self.scrape_vacays  
        vacays = []

        vacays << self.scrape_website
       
        vacays
        
    end

    def self.scrape_website
        page = Nokogiri::HTML(open("https://www.appliedbehavioranalysisprograms.com/30-best-autism-friendly-vacation-ideas/"))
       
        vacay = self.new
        vacay.title = page.css("div.entry-content h3").each.with_index(1) do |vacay, i|
            puts "#{i}. #{vacay}"
        end
        
        vacay.info = page.css("div.entry-content p")[6..64].text

        vacay
    end

end