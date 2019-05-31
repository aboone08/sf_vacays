# Our CLI Controller
class SfVacays::CLI
    def call
        list_vacays
        menu
        goodbye
    end

    def list_vacays
        puts "Top Autism Spectrum Friendly Family Vacations:"
        # here doc - http://blog.jayfields.com/2006/12/ruby-multiline-strings-here-doc-or.html
        # https://en.wikibooks.org/wiki/Ruby_Programming/Here_documents
        
        @vacay = SfVacays::Vacay.transport
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the destination you'd like to explore, type list to see full list, or press exit:"
            input = gets.strip.downcase
            case input
            when "1"
                puts "More info on destination 1..."
            when "2"
                puts "More info on destination 2.."
            when "list"
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