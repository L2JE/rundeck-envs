#!/usr/bin/env ruby

file = File.open("override-config.properties")


#puts "::::::::::::The whole file:::"
#puts file.read
#puts ":::::::::::::::::::::::::::::"

props= file.read.gsub(/(^#.+)/, '').each_line.filter_map { |line| line if !line.match /^$/ }

puts props