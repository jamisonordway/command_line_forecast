# command_line_forecast

This applicaiton provides weather forecast breakdowns right in the command line!

To use Command Line Forecast, clone this repo, then procede to **setup**.

## Setup

First, install excon for API calls: `sudo gem install excon`

Then install dotenv for environment variables: `gem install dotenv`

## Getting a weather forecast

In the command line, run `forecast -h` to see a list of all parameter options.

`-a` refers to a latitude.

`-o` refers to a longitude.

`-g` refers to a given granularity (currently, hourly, or daily).

`-p` is optional and allows for a specified 'path/to/file' to which JSON result will be written.

## Examples

`forecast -a 37.7749 -o 122.4194 -g currently -p folder/log.json` 

=>

`{"time"=>1541440903, "summary"=>"Overcast", "icon"=>"cloudy", "precipIntensity"=>0, "precipProbability"=>0, "temperature"=>51.97, "apparentTemperature"=>51.97, "dewPoint"=>38.69, "humidity"=>0.6, "pressure"=>1027.28, "windSpeed"=>17.34, "windGust"=>17.42, "windBearing"=>352, "cloudCover"=>0.96, "uvIndex"=>0, "visibility"=>10,"ozone"=>280.31}
Thank you for using Command Line Forecast!`

# folder/log.json

`{
  "time":1541440903,
  "summary":"Overcast",
  "icon":"cloudy",
  "precipIntensity":0,
  "precipProbability":0,
  "temperature":51.97,
  "apparentTemperature":51.97,
  "dewPoint":38.69,
  "humidity":0.6,
  "pressure":1027.28,
  "windSpeed":17.34,
  "windGust":17.42,
  "windBearing":352,
  "cloudCover":0.96,
  "uvIndex":0,
  "visibility":10,
  "ozone":280.31
 }`
  
  
  
