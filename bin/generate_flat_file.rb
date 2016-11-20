#!/usr/bin/env ruby
require 'yaml'
files = Dir["#{File.dirname(__FILE__)}/../resources/AWS/**/*.yaml"]
output = files.map { | file | YAML.load_file file }.reduce( {}, :merge! )
File.open('output/resources.yaml', 'w') { |file| file.write(output.to_yaml) }
