# require 'pry'
# class BznPoetry::Post 
# #     #have titles and dates 

# attr_accessor :date, :title 
# @@all = []
# @@all_dates = []
# @@all_poems = {}

# def initialize(date, title)
#     @date = date 
#     @title = title
#     save
# end 

# def date
#     @date
# end 

# def title 
#     @title 
# end 

# def self.all
#     BznPoetry::Scraper.scrape_craigslist if @@all.empty?
#     @@all
# end 

# def save 
#     @@all << self 
# end 

# def self.all_dates
#     BznPoetry::Scraper.scrape_craigslist if @@all.empty?
#     @@all.each do |x| x.date 
#         if @@all_dates.include?(x.date) == false 
#             @@all_dates << x.date 
#         end 
#     end 
#     @@all_dates
#     # @@all_poems.map do |k, v| 
#     #     @@all_dates << k 
#     #     @@all_dates
#     # end 
# end
  
# def self.all_poems
#     BznPoetry::Scraper.scrape_craigslist if @@all.empty?
#     @@all.each do |x| x.date x.title
#         if @@all_poems.include?(x.date) == false 
#             @@all_poems[date] = []
#         end 
#         @@all_poems[date] << x.title
#         binding.pry
#     end 
#     @@all_poems
# end

# # def self.find_and_format_poem_by(date)
# #     @formatted_poem = []
# #    @@all_poems.select {|k, v| k.date == date}.each do |k, v|
# #     @formatted_poem << v 
# #    end
# #     @formatted_poem.each_with_index do |x, i|
# #     if i != -1
# #       @formatted_poem.collect {|x| x.downcase + " /"}
# #     else 
# #         @formatted_poem.collect {|x| x.downcase}
# #     end 
# # end
# #     @formatted_poem
# #     end 

# # def add_to_date 
# #     date = self.date 
# #     post = self.title 
# #     BznPoetry::Date.new(date, post)
# # end 

# # def add_to_poem
# #     date = self.date 
# #     post = self.title 
# #     BznPoetry::Poem.new_by_import(date, post)
# # end 



# # def self.export_dates 
# #     @@dates.each do |date|
# #     BznPoetry::Date.new(date)
# #     end 
# # end 

# # def self.dates
# #     @@dates
# # end 

# # def date=(date)
# #     self.date = Date.create_by_date(date)
# # end 
# # # def self.export_dates
# # #     @@all.each do |x| 
# # #         date = x.date 
# # #         Date.new(date)
# # #     end 
# # # end 

# # # def organize_posts(date, title)
# # #     if @post.date == date
# # #         @post << title 
# # #     end 
# # # end 

# # def poem_date=(date)
# #     self.date = Poem.new(date)
# #     date.add_post(self.title)
# # end 

# # def self.all
# #     BznPoetry::Scraper.scrape_craigslist if @@all.empty?
# #     @@all
# # end 

# end 
