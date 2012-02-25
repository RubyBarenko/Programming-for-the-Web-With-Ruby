# nokogiri_demo.rb
require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("http://satishtalim.github.com/webruby/chapter3.html"))
puts 'Total of "the" words: %s.' % doc.content.scan(/\bthe\b/i).size # => Total of "the" words: 146.
