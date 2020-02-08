class BznPoetry::CLI 

    #   This is the only place to use "puts" and the only place where users can enter info
    
    #  Here's the flow 
    # #   run 
    # #   puts "View poems from this month by selecting a day"
    # #   get_available_days 
    # #     # this should retrieve all of the possible dates, but ignore repeats 
    # #     # effectively store all of the ones that share a date into an array/hash
    # #   list_days 
    # #   get_user_day
    # #   get_posts_for(day)
    # #   list_posts 
    # #     # puts the contents of the date array 
    # #   exit 

    
    def welcome 
        puts "Welcome to Bozeman Craigslist Poetry"
        main_menu 
    end 

    def main_menu
        puts "To view poems, type 'poems' or type 'exit' to exit"
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
        puts "Scroll down to view available dates"
        get_available
        list_dates
        puts "Scroll up to view available dates"
        get_user_date 
    end 

    def get_available
      @entries = BznPoetry::Posts::GROUP
    end 
    
    def list_dates
      @entries.each_with_index do |date, index| 
        puts "#{index + 1}. #{date}"
      end 
      get_user_date
    end 

    # def get_user_date 
    #    chosen_date = gets.strip
    #    if chosen_date = 
    #    show poem
    #     elsif chosen_date = "exit"
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

    # def invalid_input
    # puts "Command not recognized"
    # main_menu
    # end 

       # def exit 
    # end 
end