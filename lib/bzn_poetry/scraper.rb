require 'pry'

class BznPoetry::Scraper 
    
    def self.scrape_craigslist
        html = open("https://bozeman.craigslist.org/d/missed-connections/search/mis")
        doc = Nokogiri::HTML(html) 

        posts = doc.css("ul.rows li.result-row")

        posts.each do |post| 
        date = post.css("time.result-date").text.strip
        title = post.css("a.result-title.hdrlnk").text.strip 
     
        BznPoetry::Post.new(date, title)
        end 
    end 
end 