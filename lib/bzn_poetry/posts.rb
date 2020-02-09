require 'pry'

class BznPoetry::Posts 
#should have a date and title 

attr_accessor :date, :title

@@all = {}
DATES = []

    def initialize(date, title)
     @date = date
        unless DATES.include?(date)
        DATES << date 
        end
     @title = title
     add_post(date, title)
    end 

    def add_post(date, title)
     if @@all.include?(date) == false 
        @@all[date] = []
        end 
    @@all[date] << title 
    end 

    def self.dates
        BznPoetry::Scraper.scrape_craigslist if DATES.empty?
        DATES
    end

    def self.all 
     BznPoetry::Scraper.scrape_craigslist if @@all.empty?
        @@all
    end 

end 