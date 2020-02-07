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

    
    def run 
        puts "Welcome to Bozeman Craigslist Poetry"
        puts "View poems from this month by selecting a day"
        get_available_days
        list_days
    end 

    def get_available_days
      # will be scraped 
      @days = ["01", "04"]
    end 
    
    def list_days 
      @days.each.with_index(1) do |day, index| 
        puts "#{index}. #{day}"
      end 
    end 
end