require_relative "../lib/event_scraper_service.rb"

describe EventScraperService do
  context "when using the EventScraperService class" do
    it "should have an events method that returns an events array containing ticket data" do
      event_scraper_service_object = EventScraperService.new
      expect(event_scraper_service_object.events).to be_instance_of Array
    end

    it "should have a scrape method" do
      event_scraper_service_object = EventScraperService.new
      expect(event_scraper_service_object.scrape).to be_truthy
    end
  end

  context "when using the scrape method" do
    it "should return an array" do
      event_scraper_service_object = EventScraperService.new
      expect(event_scraper_service_object.scrape).to be_instance_of Array
    end
  end

  context "when accessing event data in EventScraperService class" do
    it "the events array should contain hashes" do
      event_scraper_service_object = EventScraperService.new
      expect(event_scraper_service_object.events.sample).to be_instance_of Hash
    end

    it "the event hash should have 6 keys" do
      event_scraper_service_object = EventScraperService.new
      events = event_scraper_service_object.events
      random_event_hash = events.sample
      expect(random_event_hash.keys.count).to eq 6
    end
  end

  context "when looking at the keys and values in event hash" do
    it "should have a name" do
      event_scraper_service_object = EventScraperService.new
      events = event_scraper_service_object.events
      random_event_hash = events.sample
      expect(random_event_hash.has_key?(:name)).to be true
    end

    it "should have a artist" do
      event_scraper_service_object = EventScraperService.new
      events = event_scraper_service_object.events
      random_event_hash = events.sample
      expect(random_event_hash.has_key?(:artist)).to be true
    end

    it "should have a city" do
      event_scraper_service_object = EventScraperService.new
      events = event_scraper_service_object.events
      random_event_hash = events.sample
      expect(random_event_hash.has_key?(:city)).to be true
    end

    it "should have a venue" do
      event_scraper_service_object = EventScraperService.new
      events = event_scraper_service_object.events
      random_event_hash = events.sample
      expect(random_event_hash.has_key?(:venue)).to be true
    end

    it "should have a date" do
      event_scraper_service_object = EventScraperService.new
      events = event_scraper_service_object.events
      random_event_hash = events.sample
      expect(random_event_hash.has_key?(:date)).to be true
    end

    it "should have a price" do
      event_scraper_service_object = EventScraperService.new
      events = event_scraper_service_object.events
      random_event_hash = events.sample
      expect(random_event_hash.has_key?(:price)).to be true
    end

    it "price data type should be integer" do
      event_scraper_service_object = EventScraperService.new
      events = event_scraper_service_object.events
      random_event_hash = events.sample
      expect(random_event_hash[:price].class).to be_instance_of Numeric
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
