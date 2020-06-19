class Scraper 
    
    def self.scrape_events
        page = Nokogiri::HTML(open("https://www.gotolouisville.com/events-calendar/"))
        event_listings = page.css("#dir-root > article")

        p = 1
        last_page = 2

        while p <= last_page
            
            p_page = Nokogiri::HTML(open("https://www.gotolouisville.com/events-calendar/?page=#{p}"))
            puts  "Page: #{p}"
            puts ""
            p_event_listings = p_page.css("#dir-root > article")
           
            p_event_listings.each do |event_listing|
                    name = event_listing.search('.card__title').first.text
                    month = event_listing.search('.cal-date__month').text
                    day = event_listing.search('.cal-date__date').text
                    year = event_listing.search('.cal-date__year').text
                    event_listing_url = "https://www.gotolouisville.com/events-calendar" + event_listing.css("a")[0].attr("href")
                    summary = event_listing.search('.card__summary').text
                    event_listing = Event.new(name, month, day, year, summary, event_listing_url) 
                puts "Adding.... #{event_listing.name}"
                puts ""
            end
            p += 1
        end
    end
end
