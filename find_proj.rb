#!/usr/bin/env ruby
require 'pathname'
require 'yaml'

# set this to: 0-No color, 1-Orange, 2-Red, 3-Yellow, 4-Blue, 5-Purple, 6-Green, 7-Gray
color_num = "4"

y = Pathname.new(Dir.pwd)
y.ascend do |x| 
  if `mdls -name kMDItemFSLabel -raw #{x}` == color_num
    puts "PJ(#{x.basename})"
    #File.open("/tmp/proj_alias.tmp", 'w+') {|f| f.write("#{x}") }
    stack = if File.exists?('/tmp/proj_alias.yml')
                YAML::load( File.read('/tmp/proj_alias.yml') )
              else
               []
              end
    stack ||= []
    stack.unshift(x)
    stack.uniq!
    File.open('/tmp/proj_alias.yml','w') do|file|
      file.puts stack.to_yaml
    end
    break
  end
end
