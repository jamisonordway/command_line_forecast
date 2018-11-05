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
  parser.on('-g', '--granularity GRANULARITY', String, 'The granularity for the forecast results') do |v|
    options[:granularity] = v
  end
  parser.on('-p', '--path[PATH]', String, 'The optional filepath for the forecast results') do |v|
    options[:path] = v
  end
end.parse!

if options[:latitude] && options[:longitude] && options[:granularity] 
  lat = options[:latitude]
  long = options[:longitude]
  granularity = options[:granularity]
  result = DarkSky.new(lat, long, granularity)
  binding.pry
    if options[:path]
      File.write("#{options[:path]}", result.get_weather)
    else
      result.get_weather
    end
  else
  puts 'missing params'
end