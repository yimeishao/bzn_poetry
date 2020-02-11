require 'pry'

class BznPoetry::CLI 
    
    def welcome 
        puts "\nWelcome to Bozeman Craigslist Poetry".bold.black.on_white
        puts "for neighbors by neighbors\n".italic
        @input = ""
        until @input == "exit"
        main_menu 
        end 
    end 

    def main_menu
        puts "\nTo view latest poems, type 'poems'".bold
        puts "Type 'exit' at any time to exit\n"
        input = gets.strip.downcase 
        case input
        when "poems" 
            poems_menu
        when "exit"
            exit
        else invalid_input
        end 
    end 

    def poems_menu
        puts "\nChoose an index number to view the poem for that day:\n".underline
        get_available
        list_available
        get_user_date
    end 

    def get_available
        @available = BznPoetry::Post.dates
    end 

    def list_available
        @available.each_with_index do |date, i| 
        puts "#{i + 1}. #{date}"
        end
    end 
    
    def get_user_date 
       user_date = gets.strip
    if user_date.to_i.between?(1, 10)
        user_date = user_date.to_i - 1 
        show_poem(user_date)
    elsif user_date == 'exit'
        exit 
       else 
        invalid_input 
       end 
    end 

    def show_poem(user_date)
        date = @available[user_date]
        puts "\nHere's what our hearts wrote on #{date}:\n".bold 

        @poems = BznPoetry::Post.all
        poem = @poems[date].map {|x| x.downcase + " /"}
        puts poem
    end 

    def invalid_input
    puts "\nCommand not recognized\n".red
    main_menu
    end 

end