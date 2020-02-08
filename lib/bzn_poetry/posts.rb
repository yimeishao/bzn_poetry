class BznPoetry::Posts 
#should have a date and title 

attr_accessor :date, :title 

@@all = []

def initialize(date, title)
    @date = date
    @title = title
    sort 
    save 
end 

def sort
end 

def save 
    @@all << self
end 


end 