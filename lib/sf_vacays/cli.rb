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
            puts "Enter the number of the Vacation you'd like to explore between 1 to 30, type list to see full list, or press exit:"
            input = gets.strip.downcase
            #if input.to_i > 0 && input.to_i <= 30
               @details = SfVacays::Vacay.descriptions
               #puts @details[0].text
               if input.to_i == 1
                puts "Austin, Texas" 
                puts @details[0].text
               elsif input.to_i == 2
                puts "Beaches Caribbean Resorts" 
                puts @details[2].text
               elsif input.to_i == 3
                puts "The Berkshires" 
                puts @details[4].text
               elsif input.to_i == 4
                puts "Camping" 
                puts @details[6].text
               elsif input.to_i == 5
                puts "Caribbean Cruise" 
                puts @details[8].text
               elsif input.to_i == 6
                puts "Disney Parks & Resorts" 
                puts @details[10].text
               elsif input.to_i == 7
                puts "Dollywood"
                puts @details[12].text
               elsif input.to_i == 8
                puts "Edaville Family Theme Park"
                puts @details[14].text
               elsif input.to_i == 9
                puts "Great America Theme Parks"
                puts @details[16].text
               elsif input.to_i == 10
                puts "Great Sand Dunes National Park"
                puts @details[18].text
               elsif input.to_i == 11
                puts "Great Wolf Lodge"
                puts @details[20].text
               elsif input.to_i == 12
                puts "Greece with A Million Senses"
                puts @details[22].text
               elsif input.to_i == 13
                puts "HersheyPark"
                puts @details[24].text
               elsif input.to_i == 14
                puts "King’s Island Theme Park"
                puts @details[26].text
               elsif input.to_i == 15
                puts "LEGOLAND Florida Resort"
                puts @details[28].text
               elsif input.to_i == 16
                puts "London, England"
                puts @details[30].text
               elsif input.to_i == 17
                puts "Madison, Wisconsin"
                puts @details[32].text
               elsif input.to_i == 18
                puts "Morgan’s Wonderland"
                puts @details[34].text
               elsif input.to_i == 19
                puts "Myrtle Beach, South Carolina"
                puts @details[36].text
               elsif input.to_i == 20
                puts "Portugal with 4 All Senses"
                puts @details[38].text
               elsif input.to_i == 21
                puts "San Diego Zoo"
                puts @details[40].text
               elsif input.to_i == 22
                puts "SeaWorld"
                puts @details[42].text
               elsif input.to_i == 23
                puts "Sesame Place"
                puts @details[44].text
               elsif input.to_i == 24
                puts "Skiing in Colorado"
                puts @details[46].text
               elsif input.to_i == 25
                puts "Smuggler’s Notch Resort"
                puts @details[48].text
               elsif input.to_i == 26
                puts "Snow Mountain Ranch"
                puts @details[50].text
               elsif input.to_i == 27
                puts "Surfside Beach, South Carolina"
                puts @details[52].text
               elsif input.to_i == 28
                puts "TradeWinds Island Resort"
                puts @details[54].text
               elsif input.to_i == 29
                puts "Wilderness Resort"
                puts @details[56].text
               elsif input.to_i == 30
                puts "Yellowstone National Park"
                puts @details[58].text 
            elsif input == "list"
                list_vacays
            else
                puts "Not sure what you want...Please enter in a location between 1 and 30, type list or exit."
            end
        end
    end

  
    def goodbye
        puts "Thanks for visiting, enjoy your trip!"
    end
end