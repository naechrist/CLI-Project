How to build a CLI Gem
1. Plan your gem, imagine your interface
2. Start with the project structure - google
3. Start with the entry point - the file run
4. Force that to build the CLI interface
5. Stub out the interface 
6. Start making things real
7. Discover objects
8. Program

- a command line interface for upcoming events @ 4th street live
- Welcome to 4th street live! here is a list of upcoming events 
- select the number of the event you would like more info on
- print out info

info to include:
- name of event
- time and date
- price for tix 
- maybe a link to buy the tix

- type done to exit
- wrong number typed... try again 


Classes 
- CLI - how we interact w user, accepting input and displaying output
- Scraper classs - to scrap info from the website 
- Events class - to hold the info on th events and assign attributes to each video game that gets instantiated 

prints name but prints it twice 
page.search('.eds-event-card-content__action-link').text.strip