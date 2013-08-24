require 'nokogiri'
require 'open-uri'


puts "###### 1"

doc = Nokogiri::HTML(open('http://www.reference.com/example-sentences/abjure'))

doc.xpath('//*[@id="sentence_examples"]/div[*]').each do |div|
  puts div.content unless div.content == "more"
end

puts "###### 2"

doc = Nokogiri::HTML(open('http://sentence.yourdictionary.com/voracious'))

doc.xpath('/html/body/div[*]/div[*]/div[*]/section[*]/div/ul/li[*]').each do |li|
  puts li.content	
end

puts "###### 3"

doc = Nokogiri::HTML(open('http://forbetterenglish.com/index.cgi?page=acd&article=an&language=English&str=dispose'))

doc.xpath('//tr//td[3]').each do |td|
  puts td.content.strip.gsub("\n", ' ').squeeze(' ').gsub(" .", '.')
end

puts "###### 4"

doc = Nokogiri::HTML(open('http://dictionary.cambridge.org/dictionary/british/ghastly?q=ghastly'))

doc.xpath('//span[@class="eg"]').each do |span|
  puts span.content
end