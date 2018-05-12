Set up and running the scraper.

ruby version 2.4.3 (please make sure to have that installed)

Gems etc.
Please make sure to install the following gems:
  nokogiri
  open-uri
  rspec
  json

in the terminal, run: gem install <gem_name>

to run the app, make sure in the right directory (we-got-tickets-scraper) and in terminal:
ruby lib/app.rb

to run the tests, again in the right directory (we-got-tickets-scraper):
ruby spec/event_scraper_service_spec.rb


Notes:

Overall, I really enjoyed this challenge a lot and I really enjoy scraping.

*** Testing and time:
I took longer (just under 3 hours) than the 2 hours because of a variety of reasons. It was my first time ever doing testing (TDD) properly and also using rspec and wanted to give it a good shot and have something to show. I thought this was such a great learning experience! Additionally, there were some issues with the cafe I was working out of and then internet at home not working, but I'm glad to have put this together, although incomplete.

There are some issues here where my code does not pass all the tests that I have written. Because of time, I chose to reduce the amount of regex that I'd have to write to filter the text while accessing the appropriate data. That therefore made me cut the number of keys down in the hash to only 3, vs 6 where I would store all the individual event attributes separately. With the 3, I could still capture the essential details. I left the code for those tests in there anyway just to show.

I believe there are some bugs in my tests where I may not be checking for keys (e.g :name, :venue_details) properly.

*** spec choice:
I chose to use rspec because of its english-like syntax and also because of its behavior driven development nature and it testing what my code is doing. I'd happily use it again in the future


*** nokogiri, json gems
Nokogiri is a very useful gem for scraping html and putting it in a more readable "nokogiri object" form. I could then use useful methods such as search to access html element values etc. using css class selectors

I chose to store the data in a json because i feel it is a really nice way to store data, making the data easy to access via its keys.

I am thinking there may be an error in the json file (i dont see the commas separating each hash). But Im not sure if that is because of the mode I have used and the JSON method pretty_generate to display the JSON in a more readable manner.

*** DRYNESS:
There is definitely some more opportunity to be more dry and refactor my code, but I'm leaving it here. Would love to review it more with you all.

*** other:
I realise I have only scraped one page of we got tickets so far, but I ended up running out of time. It was my approach to first get one page down and then write code to make it so that I could click through to the next pages and scrape

To go through the other pages, I would create a variable to interpolate in to the base_url. I would then iterate a few times changing that base_url each time and wrapping the existing code in #scrape with an iterator to do that. I used the 'a' mode in File.open (in the write_json method) to append data and not re-write the data each time)

Thank you for taking the time and I hope to do an even better job next time!

