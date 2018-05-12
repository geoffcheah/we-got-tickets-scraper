require 'nokogiri'
require 'open-uri'
require 'json'

class EventScraperService
  attr_reader :events

  def initialize
    @events = []
  end

  def scrape
    base_url = "http://www.wegottickets.com/searchresults/page/1/all#paginate"
    html_file = open(base_url).read
    html_doc = Nokogiri::HTML(html_file)
    html_doc.search(".content.block-group.chatterbox-margin").each do |element|
      @events << { name: get_name(element),
        venue_details: get_venue_details(element),
        price: get_price(element)
      }
    end
    return @events
  end

  def get_name(element)
    element.search(".event_link").text
  end

  def get_venue_details(element)
    element.search(".venue-details").text
  end

  def get_price(element)
    price_string = element.search(".searchResultsPrice").text
    price_string.gsub(/\A.+=\s£/," ").to_f
  end

  def write_json(events)
    events.each do |event|
      File.open('events.json', 'a') do |f|
        f.write(JSON.pretty_generate(event))
      end
    end
  end
end

scraper_service_object = EventScraperService.new
events = scraper_service_object.scrape


