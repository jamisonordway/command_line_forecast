require 'optparse'
require './dark_sky.rb'
require './file_write.rb'

options = {}

OptionParser.new do |parser|
  options[:granularity] = 'currently'
  parser.on('-a', '--latitude LATITUDE', Float, 'The latitude for the forecast. Example: 37.7749') do |v|
    options[:latitude] = v
  end
  parser.on('-o', '--longitude LONGITUDE', Float, 'The longitude for the forecast. Example: 122.4194') do |v|
    options[:longitude] = v
  end
  parser.on('-g', '--granularity GRANULARITY', String, "The granularity for the forecast results. Example: 'currently', 'daily', or 'hourly'") do |v|
    options[:granularity] = v
  end
  parser.on('-p', '--path PATH', String, 'The optional filepath for the forecast results.') do |v|
    options[:path] = v
  end
end.parse!

if options[:latitude] && options[:longitude] && options[:granularity] 
  result = DarkSky.new(options[:latitude], options[:longitude], options[:granularity])
  if options[:path]
    FileWrite.new(options[:path], result.get_weather).write_to_path
  else
    result.get_weather
  end
  else
  puts 'missing params'
end
