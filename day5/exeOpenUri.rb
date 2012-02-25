# netouri.rb
require 'open-uri'

f = open('http://satishtalim.github.com/webruby/chapter3.html')
puts 'Total of "the" words: %s.' % f.readlines.join.scan(/\bthe\b/i).size # => Total of "the" words: 146.
