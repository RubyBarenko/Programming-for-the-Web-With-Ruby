
rack = lambda do |env| 
  [ 200,
    {"Content-Type"=>"text/plain"},
    ["Command line argument you typed was: #{env[:text]}"]
  ]
end

rack.call({text:ARGV.first}).each {|i| p i}