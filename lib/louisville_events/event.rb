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

end






