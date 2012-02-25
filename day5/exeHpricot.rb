# nethpcot.rb
require 'open-uri'
require 'hpricot'

page = Hpricot(open('http://satishtalim.github.com/webruby/chapter3.html'))
puts 'Total of "the" words: %s.' % page.inner_html.scan(/\bthe\b/i).size # => Total of "the" words: 146.
