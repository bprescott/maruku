#! /usr/bin/env ruby

puts "Maruku:"
puts `bin/maruku -o - --html-frag #{ARGV[0]}`

puts "\n\nRedcarpet:"
puts `redcarpet #{ARGV[0]}`

puts "\n\nKramdown:"
puts `kramdown #{ARGV[0]}`

puts "\n\nBluecloth:"
puts `bluecloth #{ARGV[0]}`

puts "\n\nRDiscount:"
puts `rdiscount #{ARGV[0]}`