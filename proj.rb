#!/usr/bin/env ruby
require 'pathname'
require 'yaml'
if File.exists?('/tmp/proj_alias.yml')
  project = YAML::load( File.open( '/tmp/proj_alias.yml' ) )
end
index = ARGV.first.to_i || 0
project ||=[]
if project.length > index
  puts(project[index])
else
  puts(project[0]) #did have a warning, but it didn't work being call from zsh function
end
