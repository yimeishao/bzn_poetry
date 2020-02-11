# class BznPoetry::Poem
# #     # poems have dates, Poems format Posts 

# attr_accessor :date 

# @@all = []

# def initialize(date, posts)
#     @date = date 
#     @posts = []
#     @posts << posts 
#     # import_posts
#     # organize 
# #     # format_poem
#    save 
# end 

# def date 
#     @date 
# end 

# def add_post(post)
#     @posts << post 
# end 

# # def self.new_by_import(date, posts)
# #     @date = date 
# #     BznPoetry::Poem.new(date)
# #     @posts << posts 
# #     save 
# # end 

# # def import_posts 
# #    @posts << Post.all.select {|post| post.date == self.date} unless @posts.include?(post)
# # end 

# # def self.all 
# #     BznPoetry::Date.create_poems if @@all.empty?
# #     @@all
# # end 


# # def self.find_by_date(date)
# #     poem = @@all.find {|x| x.date == date} 
# #     # format_poem 
# #     binding.pry
# # end 

# def save 
# #     if @@all.include?(date) == false 
# #         @@all[date] = []
# #     end 
# #     @@all[date] << @posts 
#     @@all << self 
# end 


# end 
# # end 
