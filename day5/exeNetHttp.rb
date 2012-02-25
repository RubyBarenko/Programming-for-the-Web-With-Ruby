# nethttp1.rb
require 'net/http'

url = URI.parse('http://satishtalim.github.com/webruby/chapter3.html')

Net::HTTP.start(url.host, url.port) do |http|
  req = Net::HTTP::Get.new(url.path)
  body = http.request(req).body
  puts 'Total of "the" words: %s.' % body.scan(/\bthe\b/i).size # => Total of "the" words: 146.
end