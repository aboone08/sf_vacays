# Our CLI Controller
class SfVacays::CLI
    def call
        list_vacays
        menu
        goodbye
    end

    def list_vacays
        # here doc - http://blog.jayfields.com/2006/12/ruby-multiline-strings-here-doc-or.html, https://en.wikibooks.org/wiki/Ruby_Programming/Here_documents
        puts "Top Autism Spectrum Friendly Family Vacations:"   
        @vacays = SfVacays::Vacay.destinations
    end

    def menu
        input = nil
       while input != "exit"
            puts "Enter the number of the Vacation you'd like to explore between 1 to 30. Type list to see full list, or press exit:"
            input = gets.strip.downcase
               @details = SfVacays::Vacay.descriptions
               if input.to_i == 1
                puts "Austin, Texas".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[0].text.green
               elsif input.to_i == 2
                puts "Beaches Caribbean Resorts".blue
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[2].text.green
               elsif input.to_i == 3
                puts "The Berkshires".blue 
                puts "*+*+*+*+*+*+*+*".light_blue 
                puts @details[4].text.green
               elsif input.to_i == 4
                puts "Camping".blue  
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[6].text.green
               elsif input.to_i == 5
                puts "Caribbean Cruise".blue  
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[8].text.green
               elsif input.to_i == 6
                puts "Disney Parks & Resorts".blue  
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[10].text.green
               elsif input.to_i == 7
                puts "Dollywood".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[12].text.green
               elsif input.to_i == 8
                puts "Edaville Family Theme Park".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[14].text.green
               elsif input.to_i == 9
                puts "Great America Theme Parks".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[16].text.green
               elsif input.to_i == 10
                puts "Great Sand Dunes National Park".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[18].text.green
               elsif input.to_i == 11
                puts "Great Wolf Lodge".blue
                puts "*+*+*+*+*+*+*+*".light_blue 
                puts @details[20].text.green
               elsif input.to_i == 12
                puts "Greece with A Million Senses".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[22].text.green
               elsif input.to_i == 13
                puts "HersheyPark".blue
                puts "*+*+*+*+*+*+*+*".light_blue 
                puts @details[24].text.green
               elsif input.to_i == 14
                puts "King’s Island Theme Park".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[26].text.green
               elsif input.to_i == 15
                puts "LEGOLAND Florida Resort".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[28].text.green
               elsif input.to_i == 16
                puts "London, England".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[30].text.green
               elsif input.to_i == 17
                puts "Madison, Wisconsin".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[32].text.green
               elsif input.to_i == 18
                puts "Morgan’s Wonderland".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[34].text.green
               elsif input.to_i == 19
                puts "Myrtle Beach, South Carolina".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[36].text.green
               elsif input.to_i == 20
                puts "Portugal with 4 All Senses".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[38].text.green
               elsif input.to_i == 21
                puts "San Diego Zoo".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[40].text.green
               elsif input.to_i == 22
                puts "SeaWorld".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[42].text.green
               elsif input.to_i == 23
                puts "Sesame Place".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[44].text.green
               elsif input.to_i == 24
                puts "Skiing in Colorado".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[46].text.green
               elsif input.to_i == 25
                puts "Smuggler’s Notch Resort".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[48].text.green
               elsif input.to_i == 26
                puts "Snow Mountain Ranch".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[50].text.green
               elsif input.to_i == 27
                puts "Surfside Beach, South Carolina".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[52].text.green
               elsif input.to_i == 28
                puts "TradeWinds Island Resort".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[54].text.green
               elsif input.to_i == 29
                puts "Wilderness Resort".blue
                puts "*+*+*+*+*+*+*+*".light_blue 
                puts @details[56].text.green
               elsif input.to_i == 30
                puts "Yellowstone National Park".blue 
                puts "*+*+*+*+*+*+*+*".light_blue
                puts @details[58].text.green
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