#!/usr/bin/env ruby
require 'pathname'

# set this to: 0-No color, 1-Orange, 2-Red, 3-Yellow, 4-Blue, 5-Purple, 6-Green, 7-Gray
color_num = "4"

y = Pathname.new(Dir.pwd)
y.ascend do |x| 
  if `mdls -name kMDItemFSLabel -raw #{x}` == color_num
    puts "PJ(#{x.basename})"
    File.open("/tmp/proj_alias.tmp", 'w+') {|f| f.write("#{x}") }
  end
  break
end
