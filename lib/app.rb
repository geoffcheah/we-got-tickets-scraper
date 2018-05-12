require_relative 'event_scraper_service.rb'

scraper_service_object = EventScraperService.new
events = scraper_service_object.scrape
scraper_service_object.write_json(events)

puts "please check the events.json file"
