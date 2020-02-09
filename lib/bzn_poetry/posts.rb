require 'pry'

class BznPoetry::Posts 
#should have a date and title 

attr_accessor :date, :title

@@all = []

def initialize(date, title)
    @date = date
    @title = title
    # unique_dates(date, title)
    # add_post(date, title)
    save
end 


def save 
    @@all << self
end 

def self.all 
    BznPoetry::Scraper.scrape_craigslist if @@all.empty?
    @@all
end 

end 