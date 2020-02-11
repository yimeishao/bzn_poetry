require 'pry'

class BznPoetry::Post
#rename to posts/poems 
#method to format poems should live in here 
#parameters for dates should be in here (better method to populate my DATES)
 # - when i store the dates, i want to store only unique dates and only the 10 most recent 
 # - the above currently happens in CLI class 
 # - i want to store posts as values associated with date symbol keys 
 # - this date-post hash collection should be iterated over to find_by_date for show_poem in the CLI class 

attr_accessor :date, :title

@@all = {}
DATES = []

    def initialize(date, title)
     @date = date
        # unless DATES.include?(date)
        # DATES << date 
        # end
     @title = title
     add_post(date, title)
     add_to_dates(date)
    end 

    def add_post(date, title)
     if @@all.include?(date) == false 
        @@all[date] = []
        end 
    @@all[date] << title
    end 

    def add_to_dates(date)
    if DATES.include?(date) == false && DATES.length < 10 
    DATES << date 
    end
    end 

    def self.dates
        BznPoetry::Post.all if DATES.empty?
        DATES
    end 

    def self.all 
     BznPoetry::Scraper.scrape_craigslist if @@all.empty?
        @@all
    end 

end 