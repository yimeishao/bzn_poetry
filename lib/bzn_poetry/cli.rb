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
    end 

    def get_available_days
      # will be scraped 
      @days = [ ]
    end 
    
    def list_days 
      @days.each_with_index(d) do |index, day| 
        puts "#{index + 1}. #{day}"
      end 
    end 
end