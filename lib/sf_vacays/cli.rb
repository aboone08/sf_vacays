# Our CLI Controller
class SfVacays::CLI

    def call  
        list_vacays
        description
        #display_info
        goodbye
    end

 
    def list_vacays
        puts "\nTop Autism Spectrum Friendly Family Vacations:"   
        SfVacays::Scraper.scrape_website
        SfVacays::Vacay.all.each.with_index(1) do |vacay, i|
            puts "#{i}. #{vacay.title}"
            #binding.pry
        end   
    end

    def display_info
        SfVacays::Vacay.all.each do |vacay| 
            gets.chomp
            puts "#{vacay.title}"
            puts "#{vacay.info}"
            puts "*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*".light_blue
        end
    end

    def description
        input = nil
        while input != "exit"
            puts "Enter the number of the Vacation you'd like to explore between 1 to 30. Type list to see full list, or press exit:"
            input = gets.strip.downcase
                if input.to_i > 0 && input.to_i <30
                    display_info
                elsif input == "list"
                    SfVacays::Vacay.all.each.with_index(1) do |vacay, i|
                        puts "#{i}. #{vacay.title}"
                    end 
                else
                    puts "Not sure what you want...Please enter in a location between 1 and 30, type list or exit.".red
                end        
        end
    end

    def goodbye
        puts "Thanks for visiting, enjoy your trip!".yellow
    end
end
