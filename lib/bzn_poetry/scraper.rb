require 'pry'
class BznPoetry::Scraper 
    
    def self.scrape_craigslist
        html = open("https://bozeman.craigslist.org/d/missed-connections/search/mis")
        doc = Nokogiri::HTML(html) 

        posts = doc.css("ul.rows p.result-info")

        posts.each do |post| 
        date = post.css("time.result-date").text.strip
        title = post.css("a.result-title.hdlnk").text.strip 

        BznPoetry::Posts.new(date, title)
        end 
    end 
end 