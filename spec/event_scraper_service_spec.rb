require_relative "../lib/event_scraper_service.rb"

describe EventScraperService do
  context "when using the EventScraper class" do
    it "should have an events method that returns an events array containing ticket data" do
      event_scraper = EventScraperService.new
      expect(event_scraper.events).to be_instance_of Array

    end
  end
end

# identify the correct classes to select
# use nokogiri gem to convert into a searchable doc
# search to doc for appropriate data using correct classes (helpers for each attribute)
# store each events data in a hash and push into an array
# write the json from the event scraper instance variable

# tests:
# type of values, (not nil) and 5 keys values are strings and 1 is a price
# number of keys
# event has a name
# event has artists playing
# event has name of city
# event has name of venue
# event has date
# event has a price


# events = [{
      #   name: "some name",
      #   artists: "some artist",
      #   city: "some city",
      #   venue: "some venue",
      #   date: "some venue",
      #   price: 1
      # }]
