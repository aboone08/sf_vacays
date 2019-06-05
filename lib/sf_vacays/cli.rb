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
        @vacays.each do |vacay|
            vacay
        end
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the Vacation you'd like to explore between 1 to 30, type list to see full list, or press exit:"
            input = gets.strip.downcase

            if input.to_i > 0 && input.to_i <= 30
                the_vacay = @vacays[input.to_i-1]
                puts "#{the_vacay.info}"
            elsif input == "list"
                list_vacays
            else
                puts "Not sure what you want, type list or exit."
            end
        end
    end

    def goodbye
        puts "Thanks for visiting, enjoy your trip!"
    end
end