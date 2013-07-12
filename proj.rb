#!/usr/bin/env ruby
require 'pathname'
require 'yaml'
project = YAML::load( File.open( '/tmp/proj_alias.yml' ) )
index = ARGV.first.to_i || 0
if project.length > index
  puts(project[index])
else
  puts(project[0]) #did have a warning, but it didn't work being call from zsh function
end
