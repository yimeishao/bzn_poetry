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
        get_available_days
        list_days
    end 

    # def view 
    #     puts "To view poems from this month, type 'poems' or type 'exit'"
    #     input = gets.strip 
    #     case input.downcase 
    #     when "poems" 
    #         poems 
    #     when "exit"
    #         exit
    #     else invalid_input
    #     end 
    # end 

    # def poems 
    # puts "Select an available day by selecting its index number"
    # get_available_days 
    # end 

    def get_available_days
      @days = BznPoetry::Days.all 
    end 
    
    def list_days 
      @days.each_with_index do |day, index| 
        puts "#{index + 1}. #{day}"
      end 
    end 

    def get_user_day 
        chosen_day = gets.strip
        if @days.include chosen_day 
            show_poem(chosen_day)
        elsif chosen_day = "exit"
            exit 
        else 
            invalid_input
        end 
    end 
end