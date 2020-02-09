require 'pry'

class BznPoetry::CLI 
    
    def welcome 
        puts "Welcome to Bozeman Craigslist Poetry"
        main_menu 
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
        # get_user_date
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
    
    # def get_user_date 
    #    user_date = gets.strip
    #    if @available.index.to_s.include?(user_date)
    #    show_poem(user_date)
    #     elsif user_date == "exit"
    #         exit 
    #     else 
    #         invalid_input
    #     end 
    # end 

    # def show_poem(chosen_date)
    # if the chosen_date matches the date attribute 
    # puts text 
    # end 
    # end

    def invalid_input
    puts "Command not recognized"
    main_menu
    end 

       # def exit 
    # end 
end