class LouisvilleEvents::CLI

    def call 
        Scraper.scrape_events 
        puts "Welcome to Kentuckiana (Louisville, Kentucky and Southern Indiana)! Check out the list below to see the upcoming events."
        puts ""
        menu
    end

    def menu 
        events = Event.all 
        events.each.with_index(1) do |event, index|
            puts "#{index}. #{event.name} on #{event.month} #{event.day}, #{event.year}"
        end
        puts ""
        puts "Enter the number of the event you'd like more info on."
        input = gets.strip          #takes in user input
        index = input.to_i - 1      #computer starts reading @ 0 
            if event = Event.all[index]     # if number by event name is entered...
            puts ""
            puts "#{event.name}: #{event.summary}"
            puts ""
            puts "Hope you found something good! If not, type list to see the list again or exit to exit the program."
            input = gets.strip 
                if input.downcase == "list"
                    list
                elsif input.downcase == "exit"
                    exit
                else 
                    invalid
                    menu 
                end
            elsif input.downcase == "list"
                list
            elsif input.downcase == "exit"
                exit
            else 
                invalid
                menu 
            end
    end

    def list 
        menu 
    end

    def exit 
         puts ""
         puts "Thanks for stopping by, hope to see you soon!!"
    end

    def invalid 
        puts "Sorry, I don't understand, please enter the number of the event you'd like more info on."
        
    end
end
