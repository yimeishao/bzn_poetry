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
        # array = []
        # self.all.each do |x| 
        #     if x.date == date
        #         array << x.title 
        #     end 
        # end 
        # array.map {|x| x.downcase + " /"}

        # array = self.all.find_all {|x| x.date == date}
        # array.map {|x| x.title.downcase + " /"}

        self.all.find_all {|x| x.date == date}.map {|x| x.title.downcase + " /"}
    end 

    def self.possible_dates 
        # possible_dates = [] 
        # self.all.each do |x| 
        #     possible_dates << x.date
        # end
        # possible_dates.uniq
        self.all.map {|x| x.date}.uniq 
    end 

    def self.all 
        @@all
    end 

end 