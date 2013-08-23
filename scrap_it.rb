require 'nokogiri'
require 'open-uri'

# Get a Nokogiri::HTML::Document for the page we’re interested in...

doc = Nokogiri::HTML(open('http://www.reference.com/example-sentences/abjure'))

# Do funky things with it using Nokogiri::XML::Node methods...

####
# Search for nodes by xpath
doc.xpath('//*[@id="sentence_examples"]/div[*]').each do |link|
  puts link.content unless link.content == "more"
end