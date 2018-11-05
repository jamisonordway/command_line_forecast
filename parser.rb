require 'optparse'
require './dark_sky.rb'

options = {}

OptionParser.new do |parser|
  parser.on('-a', '--latitude LATITUDE', Float, 'The latitude for the forecast') do |v|
    options[:latitude] = v
  end
  parser.on('-o', '--longitude LONGITUDE', Float, 'The longitude for the forecast') do |v|
    options[:longitude] = v
  end
  parser.on('p', '--path[PATH]', String, 'The optional filepath for the forecast results') do |v|
    options[:path] = v
  end
end.parse!
