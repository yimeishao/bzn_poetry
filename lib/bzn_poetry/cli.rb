require 'pry'

class BznPoetry::CLI 
    
    def welcome 
        puts "Welcome to Bozeman Craigslist Poetry"
        @input = ""
        until @input == "exit"
        main_menu 
        end 
    end 

    def main_menu
        puts "To view latest poems, type 'poems' or type 'exit' to exit"
        input = gets.strip 
        case input.downcase 
        when "poems" 
            poems_menu
        when "exit"
            exit
        else invalid_input
        end 
    end 

    def poems_menu
        puts "Select an available date by selecting its index number"
        get_available
        get_user_date
    end 

    def get_available
      @available = BznPoetry::Posts.dates
      list_available
    end 

    def list_available
      @list = []

      @available.each do |date| 
        if @list.include?(date) == false && @list.length < 10 
        @list << date 
        end 
        end 

      @list.each_with_index do |date, i|
      puts "#{i + 1}. #{date}"
      end 
    end 
    
    def get_user_date 
       user_date = gets.strip.to_i
       if user_date.to_i.between?(1, 10)
        user_date = user_date.to_i - 1 
        show_poem(user_date)
       else 
        invalid_input 
       end 
    end 

    def show_poem(user_date)
        date = @available[user_date]
        puts "Here is the poem for #{date}:"

        @poems = BznPoetry::Posts.all 
        poem = @poems[date]
        puts "#{poem}"
    end 

    def invalid_input
    puts "Command not recognized"
    main_menu
    end 

end