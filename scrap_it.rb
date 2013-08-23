require 'nokogiri'
require 'open-uri'


puts "###### 1"

doc = Nokogiri::HTML(open('http://www.reference.com/example-sentences/abjure'))

doc.xpath('//*[@id="sentence_examples"]/div[*]').each do |link|
  puts link.content unless link.content == "more"
end

puts "###### 2"

doc = Nokogiri::HTML(open('http://sentence.yourdictionary.com/voracious'))

doc.xpath('/html/body/div[*]/div[*]/div[*]/section[*]/div/ul/li[*]').each do |link|
  puts link.content
end