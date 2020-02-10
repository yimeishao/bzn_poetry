class BznPoetry::CLI 
    
    def welcome 
        puts "\nWelcome to Bozeman Craigslist Poetry".bold.black.on_white
        puts "for neighbors by neighbors\n".italic
        @input = ""
        until @input == "exit"
        main_menu 
        get_available
        list_available
        get_user_date
        end 
    end 

    def main_menu
        puts "\nTo view latest poems, type 'poems'".bold
        puts "Type 'exit' at any time to exit\n"
        input = gets.strip.downcase 
        case input
        when "poems" 
            poems_menu
        when "exit"
            exit
        else invalid_input
        end 
    end 

    def poems_menu
        puts "\nChoose an index number to view the poem for that day:\n".underline
    end 

    def get_available
      @available = BznPoetry::Dates.dates
    end 

    def list_available
      @list = []

      @available.each do |date| 
        if @list.include?(date) == false && @list.length < 10 
            # limiting number of dates to 10 so user doesn't have to scroll through 100+ dates 
        @list << date 
        end 
        end 

      @list.each_with_index do |date, i|
      puts "#{i + 1}. #{date}"
      end 
    end 
    
    def get_user_date 
       user_date = gets.strip
    if user_date.to_i.between?(1, 10)
        user_date = user_date.to_i - 1 
        show_poem(user_date)
    elsif user_date == 'exit'
        exit 
       else 
        invalid_input 
       end 
    end 

    def show_poem(user_date)
        date = @available[user_date]
        puts "\nHere's what our hearts wrote on #{date}:\n".bold 

        @poems = BznPoetry::Dates.all
        poem = @poems[date].map {|x| x.downcase + " /"}
        puts poem

        puts "\n- Thank you for reading -\n".italic
    end 

    def invalid_input
    puts "\nCommand not recognized\n".red
    main_menu
    end 

end