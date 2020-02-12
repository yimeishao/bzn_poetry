require 'pry'

class BznPoetry::CLI 
    
    def welcome 
        puts "\nWelcome to Bozeman Craigslist Poetry".bold.black.on_white
        puts "for neighbors by neighbors\n".italic
        until false
        main_menu 
        end 
    end 

    def main_menu
        puts "\nTo view latest poems, type 'poems'".bold
        puts "Type 'exit' to exit\n"
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
        BznPoetry::Post.all 
        BznPoetry::Scraper.scrape_craigslist if BznPoetry::Post.all.empty?
    end 

    def list_available
       BznPoetry::Post.possible_dates.each_with_index do |date, i| 
       puts "#{i + 1}. #{date}" unless i > 9 
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
        date = BznPoetry::Post.possible_dates[user_date]
        puts "\nHere's what our hearts wrote on #{date}:\n".bold 
        puts BznPoetry::Post.find_poem_by_date(date)
        puts "\n- Thank you for reading -\n".italic
    end 

    def invalid_input
    puts "\nCommand not recognized\n".red.bold
    end 

end