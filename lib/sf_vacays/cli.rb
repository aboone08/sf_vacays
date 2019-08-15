# Our CLI Controller
class SfVacays::CLI

    def call  
        list_vacays
        description
        #display_info
        goodbye
    end

 
    def list_vacays
        # here doc - http://blog.jayfields.com/2006/12/ruby-multiline-strings-here-doc-or.html, https://en.wikibooks.org/wiki/Ruby_Programming/Here_documents
        puts "\nTop Autism Spectrum Friendly Family Vacations:"   
        #SfVacays::Scraper.scrape_website
        #SfVacays::Scraper.scrape_vacay
        #binding.pry
        @vacays = SfVacays::Scraper.scrape_website
        @vacays.each.with_index(1) do |title, i|
            puts "#{i}. #{title.text.blue}"
        end   
    end

    def display_info
        @vacays = SfVacays::Scraper.scrape_website
        @vacays.each.with_index do |el| 
            info = el.next_element.text.each_line do |p| 
                puts p.green
            end
        end
    end

    def description
        input = nil
        while input != "exit"
            puts "Enter the number of the Vacation you'd like to explore between 1 to 30. Type list to see full list, or press exit:"
            input = gets.strip.downcase
                if input.to_i > 0 && input.to_i <31 
                    puts "*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*".light_blue
                    display_info
                    puts "*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*".light_blue
                elsif input == "list"
                    list_vacays
                else
                    puts "Not sure what you want...Please enter in a location between 1 and 30, type list or exit.".red
                end        
        end
    end

    def goodbye
        puts "Thanks for visiting, enjoy your trip!".yellow
    end
end
