#!/usr/bin/ruby env
require 'pathname'
require 'yaml'
project = YAML::load( File.open( '/tmp/proj_alias.yml' ) )
index = ARGV.first.to_i || 0
if project.length > index
  puts(project[index])
else
  puts "must be a number smaller than #{project.length}"
end
