#!/usr/bin/env ruby

require 'date'
require 'optparse'

opt = OptionParser.new 
option = {}

opt.on('-m [VAL]', Integer, 'mon option') {|v| option[:m] = v }
opt.on('-y [VAL]', Integer, 'year option') {|v| option[:y] = v }
opt.parse(ARGV)

mon = option[:m] || mon = Date.today.mon
year = option[:y] || year = Date.today.year

first_day_wday = Date.new(year, mon, 1).wday
last_day = Date.new(year, mon, -1).day
option_date = Date.new(year, mon, 1)
head = option_date.strftime("%B") + " #{year}"
week = "Su Mo Tu We Th Fr Sa"

puts head.center(20)
puts week
print "   " * first_day_wday

(1..last_day).each do |date|
  print date.to_s.rjust(2) + " "
  first_day_wday += 1
  if first_day_wday % 7 == 0 || last_day == date
    print "\n"
  end
end
puts "\n"
