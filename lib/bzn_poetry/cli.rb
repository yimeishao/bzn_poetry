class BznPoetry::CLI 

    #   This is the only place to use "puts" and the only place where users can enter info
    
    #  Here's the flow 
    # #   run 
    # #   puts "View poems from this month by selecting a day"
    # #   get_available_days 
    # #   list_days 
    # #   get_user_day
    # #   get_posts_for(day)
    # #   list_posts 

    
    def call 
        puts "Welcome to Bozeman Craigslist Poetry"
        view
    end 

    def view 
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
        get_available_date
        list_dates
        get_user_date 
    end 

    def get_available_date
      @dates = BznPoetry::Posts.all.date 
    end 
    
    def list_dates
      @dates.each_with_index do |date, index| 
        puts "#{index + 1}. #{date}"
      end 
    end 

    # def get_user_date 
    #     chosen_date = gets.strip
    #    if chosen_date = 
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

    # def exit 
    # end 

    # def invalid_input
    # puts "Command not recognized"
    # view 
    # end 
end