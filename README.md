# autocomplete-challenge

## Instructions

- checkout this repository
- $ bundle install
- $ ruby sinatra.rb

There will now be a server running on localhost:4567

The server has one endpoint called "countries" which
takes one query parameter "term".

So "localhost:4567/countries?term=a" will return

        ["Afghanistan",
         "Bahamas",
         "Bahrain",
         "Bangladesh",
         "Bhutan",
         "Chad",
         "Chile",
         "China",
         "Czech Republic",
         "Ethiopia"]

Using the libraries and tools of your choice,
add an autocomplete widget to the page that will
use the countries endpoint to populate it's list.