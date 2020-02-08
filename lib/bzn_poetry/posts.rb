require 'pry'

class BznPoetry::Posts 
#should have a date and title 

attr_accessor :date, :title

@@all = []
GROUP = {}

def initialize(date, title)
    @date = date
    @title = title
    add_post(date, title)
    save 
end 

def add_post(date, title)
    if GROUP.include?(date) == false 
        GROUP[date] = []
    end 
    GROUP[date] << title
end 

def date_contents(date)
    DATES[date]
end 

def save 
    @@all << self
end 

def self.all 
    BznPoetry::Scraper.scrape_craigslist if @@all.empty?
    @@all
end 

def self.group 
    BznPoetry::Scraper.scrape_craigslist if GROUP.empty?
    GROUP
end 
end 