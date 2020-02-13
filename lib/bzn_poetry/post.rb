require 'pry'

class BznPoetry::Post

attr_accessor :date, :title

@@all = []

    def initialize(date, title)
     @date = date
     @title = title
     self.class.all << self 
    # save 
    end 

    # def save
    #     @@all << self 
    # end 

    def self.find_poem_by_date(date)
        array = []
        self.all.each do |x| 
            if x.date == date
                array << x.title 
            end 
        end 
        array.map {|x| x.downcase + " /"}
    end 

    def self.possible_dates 
        possible_dates = [] 
        self.all.each do |x| 
            possible_dates << x.date
        end
        possible_dates.uniq
    end 

    def self.all 
        @@all
    end 

end 