Here's the flow 

run 
puts "View poems from this month by selecting a day"
get_available_days 
this should retrieve all of the possible dates, but ignore repeats 
effectively store all of the ones that share a date into an array/hash
this is accomplished in the Posts class 
get_available
get_user_day
get_posts_for(day)
list_posts 
puts the contents of the date array 
exit 

thoughts on sorting the dates -> later decided to just do the first 10 dates:
  # because of the way the webpage is set up, the dates aren't in chronological order
    # need to fix this by building a custom sorter 
    # for much later: think about the order of the titles
    # new solution: just show the first 10 dates
  # def custom_sorter(array)
    #     # needs to split the date into month and day 
    #     months = []
    #     days = []

    #     array.each do |date|
    #         date.split(" ").each do |m, d| 
    #             months << m 
    #             days << d 
    #         end 
    #     end 
# needs to set the parameters for comparison for months 
        # sorted_months = []

        # x = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        # if month value == a value in x, assign month value = x-value.index 
            
        # y = months
        # sorted_months << y.sort_by {|a| [x.index, a.id]}

        # dates = Hash[sorted_months.zip(days)]
        # dates.each do |k, v| 
        # month = k 
        # day = v 
        # BznPoetry::Dates.new(month, day)
        # end 
# then array.sort_by {|item| [month, day]}
        # sortable_dates = BznPoetry::Dates.all
        # sortable_dates.sort_by {|d| [sortable_dates.month, sortable_dates.day]}
        #this is not good - it's going to sort months alphabetically...
    # end 
