class Event
    attr_accessor :name, :month, :day, :year, :summary, :url
    @@all = [] 

    def initialize(name, month, day, year, summary, url)
         @name = name
         @month = month
         @day = day 
         @year = year 
         @summary = summary 
         @url = url
         @@all << self
    end

    def self.all 
        @@all 
    end

    def self.get_by_year 
        self.all.select do |t|
          if t.year > 2020 
            t
          end
          
        end
        
        #return an array of all event objects who's year is greater than 2020 

    end

end



