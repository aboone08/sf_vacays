# Our CLI Controller
class SfVacays::CLI
    def call  
        get_vacays
        list_vacays
        info
        goodbye
    end

    def get_vacays
        @vacays = ['Austin, Texas','Beaches Caribbean Resorts','The Berkshires','Camping', 'Caribbean Cruise',
            'Disney Parks &amp; Resorts','Dollywood','Edaville Family Theme Park','Great America Theme Parks','Great Sand Dunes National Park',
            'Great Wolf Lodge','Greece with A Million Senses','HersheyPark','King’s Island Theme Park','LEGOLAND Florida Resort','London, England',
            'Madison, Wisconsin','Morgan’s Wonderland','Myrtle Beach, South Carolina','Portugal with 4 All Senses','San Diego Zoo',
            'SeaWorld','Sesame Place','Skiing in Colorado','Smuggler’s Notch Resort','Snow Mountain Ranch','Surfside Beach, South Carolina',
            'TradeWinds Island Resort','Wilderness Resort','Yellowstone National Park']
    end
    
    def list_vacays
        # here doc - http://blog.jayfields.com/2006/12/ruby-multiline-strings-here-doc-or.html, https://en.wikibooks.org/wiki/Ruby_Programming/Here_documents
        puts "\nTop Autism Spectrum Friendly Family Vacations:"   
        @vacays.each.with_index(1) do |vacay, i|
            puts "#{i}. #{vacay}".blue
        end   
    end

    def info
        input = nil
        while input != "exit"
            puts "Enter the number of the Vacation you'd like to explore between 1 to 30. Type list to see full list, or press exit:"
            input = gets.strip.downcase
                if input.to_i > 0 && input.to_i <30    
                    @details = SfVacays::Scraper.scrape_website      
                    @details.each do |item|
                        puts "*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*".light_blue
                        puts item.text.blue
                        puts "*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*".light_blue
                        puts item.next_element.text.green
                    end
                    
                
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
