class BznPoetry::Scraper 
    
    def self.scrape_craigslist
        html = open("https://bozeman.craigslist.org/d/missed-connections/search/mis")
        doc = Nokogiri::HTML(html) 

        posts = doc.css(ul.rows p.result-info)

        posts.each do |post| 
        date = doc.css(time.result-date).text.strip
        title = doc.css(a.result-title.hdlnk).text.strip 

        BznPoetry::Posts.new(date, title)
        end 
    end 
end 