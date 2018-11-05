# Command Line Forecast

This application provides weather forecast breakdowns right in the command line!

To use Command Line Forecast, clone this repo, then procede to **setup**.

## Setup

First, install excon for API calls: `sudo gem install excon`

Then install dotenv for environment variables: `gem install dotenv`

Obtain an key (here)[https://darksky.net/dev/register].

From command line, `touch .env`

Inside `.env`, add the following:

`API_KEY: [YOUR_API_KEY]`

## Getting a weather forecast

In the command line, run `forecast -h` to see a list of all parameter options.

`-a` refers to a latitude.

`-o` refers to a longitude.

`-g` refers to a given granularity (currently, hourly, or daily).

`-p` is optional and allows for a specified 'path/to/file' to which JSON result will be written.

## Examples

**With specified filepath:**

`forecast -a 37.7749 -o 122.4194 -g currently -p folder/log.json` 

=>

`{"time"=>1541440903, "summary"=>"Overcast", "icon"=>"cloudy", "precipIntensity"=>0, "precipProbability"=>0, "temperature"=>51.97, "apparentTemperature"=>51.97, "dewPoint"=>38.69, "humidity"=>0.6, "pressure"=>1027.28, "windSpeed"=>17.34, "windGust"=>17.42, "windBearing"=>352, "cloudCover"=>0.96, "uvIndex"=>0, "visibility"=>10,"ozone"=>280.31}
Thank you for using Command Line Forecast!`

`# folder/log.json`

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
  
  **Without specified filepath:**
  
 `forecast -a 40.7128 -o 74.0060 -g daily`
 
 =>
 
`{"summary"=>"Snow (7–11 in.) tomorrow through Sunday, with high temperatures falling to 13°F next Tuesday.", "icon"=>"snow", "data"=>[{"time"=>1541440800, "summary"=>"Mostly cloudy starting in the afternoon.", "icon"=>"partly-cloudy-night", "sunriseTime"=>1541468472, "sunsetTime"=>1541505393, "moonPhase"=>0.95, "precipIntensity"=>0, "precipIntensityMax"=>0.0001, "precipIntensityMaxTime"=>1541505600, "precipProbability"=>0, "temperatureHigh"=>30.6, "temperatureHighTime"=>1541494800, "temperatureLow"=>16.2, "temperatureLowTime"=>1541530800, "apparentTemperatureHigh"=>30.6, "apparentTemperatureHighTime"=>1541494800, "apparentTemperatureLow"=>9.62, "apparentTemperatureLowTime"=>1541527200, "dewPoint"=>3.68, "humidity"=>0.58, "pressure"=>1027.98, "windSpeed"=>5.15, "windGust"=>12.55, "windGustTime"=>1541451600, "windBearing"=>116, "cloudCover"=>0.46, "uvIndex"=>3, "uvIndexTime"=>1541484000, "visibility"=>10, "ozone"=>279.69, "temperatureMin"=>6.82, "temperatureMinTime"=>1541440800, "temperatureMax"=>30.6, "temperatureMaxTime"=>1541494800, "apparentTemperatureMin"=>-5.35, "apparentTemperatureMinTime"=>1541444400, "apparentTemperatureMax"=>30.6, "apparentTemperatureMaxTime"=>1541494800}, {"time"=>1541527200, "summary"=>"Snow (< 1 in.) overnight.", "icon"=>"snow", "sunriseTime"=>1541554944, "sunsetTime"=>1541591729, "moonPhase"=>0.98, "precipIntensity"=>0.0007, "precipIntensityMax"=>0.0045, "precipIntensityMaxTime"=>1541606400, "precipProbability"=>0.07, "precipAccumulation"=>0.28, "precipType"=>"snow", "temperatureHigh"=>31.79, "temperatureHighTime"=>1541574000, "temperatureLow"=>13.11, "temperatureLowTime"=>1541642400, "apparentTemperatureHigh"=>31.79, "apparentTemperatureHighTime"=>1541574000, "apparentTemperatureLow"=>13.11, "apparentTemperatureLowTime"=>1541642400, "dewPoint"=>10.15, "humidity"=>0.65, "pressure"=>1022.76, "windSpeed"=>1.39, "windGust"=>6.96, "windGustTime"=>1541552400, "windBearing"=>146, "cloudCover"=>0.97, "uvIndex"=>3, "uvIndexTime"=>1541570400, "visibility"=>10, "ozone"=>260.23, "temperatureMin"=>16.2, "temperatureMinTime"=>1541530800, "temperatureMax"=>31.79, "temperatureMaxTime"=>1541574000, "apparentTemperatureMin"=>9.62, "apparentTemperatureMinTime"=>1541527200, "apparentTemperatureMax"=>31.79, "apparentTemperatureMaxTime"=>1541574000}, {"time"=>1541613600, "summary"=>"Snow (3–6 in.) until evening.", "icon"=>"snow", "sunriseTime"=>1541641415, "sunsetTime"=>1541678067, "moonPhase"=>0.03, "precipIntensity"=>0.0117, "precipIntensityMax"=>0.0254, "precipIntensityMaxTime"=>1541667600, "precipProbability"=>0.44, "precipAccumulation"=>5.271, "precipType"=>"snow", "temperatureHigh"=>13.84, "temperatureHighTime"=>1541638800, "temperatureLow"=>4.19, "temperatureLowTime"=>1541700000, "apparentTemperatureHigh"=>13.84, "apparentTemperatureHighTime"=>1541638800, "apparentTemperatureLow"=>-1.54, "apparentTemperatureLowTime"=>1541728800, "dewPoint"=>11.5, "humidity"=>0.98, "pressure"=>1026.33, "windSpeed"=>1.98, "windGust"=>13.17, "windGustTime"=>1541678400, "windBearing"=>252, "cloudCover"=>0.98, "uvIndex"=>3, "uvIndexTime"=>1541656800, "visibility"=>2.81, "ozone"=>282.27, "temperatureMin"=>4.33, "temperatureMinTime"=>1541696400, "temperatureMax"=>18.65, "temperatureMaxTime"=>1541613600, "apparentTemperatureMin"=>-0.44, "apparentTemperatureMinTime"=>1541678400, "apparentTemperatureMax"=>18.65, "apparentTemperatureMaxTime"=>1541613600}, {"time"=>1541700000, "summary"=>"Partly cloudy overnight.", "icon"=>"partly-cloudy-night", "sunriseTime"=>1541727887, "sunsetTime"=>1541764406, "moonPhase"=>0.06, "precipIntensity"=>0, "precipIntensityMax"=>0.0001, "precipIntensityMaxTime"=>1541710800, "precipProbability"=>0, "temperatureHigh"=>26.05, "temperatureHighTime"=>1541750400, "temperatureLow"=>8.5, "temperatureLowTime"=>1541790000, "apparentTemperatureHigh"=>26.05, "apparentTemperatureHighTime"=>1541750400, "apparentTemperatureLow"=>0.55, "apparentTemperatureLowTime"=>1541782800, "dewPoint"=>3.32, "humidity"=>0.7, "pressure"=>1027.82, "windSpeed"=>2.49, "windGust"=>7.57, "windGustTime"=>1541779200, "windBearing"=>144, "cloudCover"=>0.13, "uvIndex"=>3, "uvIndexTime"=>1541743200, "visibility"=>10, "ozone"=>289.97, "temperatureMin"=>4.19, "temperatureMinTime"=>1541700000, "temperatureMax"=>26.05, "temperatureMaxTime"=>1541750400, "apparentTemperatureMin"=>-1.54, "apparentTemperatureMinTime"=>1541728800, "apparentTemperatureMax"=>26.05, "apparentTemperatureMaxTime"=>1541750400}, {"time"=>1541786400, "summary"=>"Light snow (< 1 in.) starting in the evening.", "icon"=>"snow", "sunriseTime"=>1541814359, "sunsetTime"=>1541850746, "moonPhase"=>0.09, "precipIntensity"=>0.0022, "precipIntensityMax"=>0.0076, "precipIntensityMaxTime"=>1541854800, "precipProbability"=>0.25, "precipAccumulation"=>0.986, "precipType"=>"snow", "temperatureHigh"=>24.77, "temperatureHighTime"=>1541836800, "temperatureLow"=>12.87, "temperatureLowTime"=>1541894400, "apparentTemperatureHigh"=>23.81, "apparentTemperatureHighTime"=>1541833200, "apparentTemperatureLow"=>12.87, "apparentTemperatureLowTime"=>1541894400, "dewPoint"=>9.18, "humidity"=>0.81, "pressure"=>1025.35, "windSpeed"=>2.27, "windGust"=>7.02, "windGustTime"=>1541786400, "windBearing"=>162, "cloudCover"=>0.59, "uvIndex"=>3, "uvIndexTime"=>1541829600, "visibility"=>10, "ozone"=>291, "temperatureMin"=>8.5, "temperatureMinTime"=>1541790000, "temperatureMax"=>24.77, "temperatureMaxTime"=>1541836800, "apparentTemperatureMin"=>0.74, "apparentTemperatureMinTime"=>1541786400, "apparentTemperatureMax"=>23.81, "apparentTemperatureMaxTime"=>1541833200}, {"time"=>1541872800, "summary"=>"Snow (1–2 in.) until afternoon.", "icon"=>"snow", "sunriseTime"=>1541900831, "sunsetTime"=>1541937089, "moonPhase"=>0.12, "precipIntensity"=>0.0052, "precipIntensityMax"=>0.0113, "precipIntensityMaxTime"=>1541905200, "precipProbability"=>0.38, "precipAccumulation"=>2.248, "precipType"=>"snow", "temperatureHigh"=>23.16, "temperatureHighTime"=>1541923200, "temperatureLow"=>9.08, "temperatureLowTime"=>1541988000, "apparentTemperatureHigh"=>16.56, "apparentTemperatureHighTime"=>1541923200, "apparentTemperatureLow"=>9.08, "apparentTemperatureLowTime"=>1541988000, "dewPoint"=>15.2, "humidity"=>1, "pressure"=>1025.7, "windSpeed"=>2.39, "windGust"=>9.9, "windGustTime"=>1541923200, "windBearing"=>225, "cloudCover"=>0.89, "uvIndex"=>3, "uvIndexTime"=>1541919600, "visibility"=>2.68, "ozone"=>287.81, "temperatureMin"=>10.45, "temperatureMinTime"=>1541955600, "temperatureMax"=>23.16, "temperatureMaxTime"=>1541923200, "apparentTemperatureMin"=>8.69, "apparentTemperatureMinTime"=>1541905200, "apparentTemperatureMax"=>16.56, "apparentTemperatureMaxTime"=>1541923200}, {"time"=>1541959200, "summary"=>"Snow (< 1 in.) starting in the afternoon, continuing until evening.", "icon"=>"snow", "sunriseTime"=>1541987303, "sunsetTime"=>1542023433, "moonPhase"=>0.15, "precipIntensity"=>0.0028, "precipIntensityMax"=>0.0084, "precipIntensityMaxTime"=>1542024000, "precipProbability"=>0.26, "precipAccumulation"=>1.264, "precipType"=>"snow", "temperatureHigh"=>20.25, "temperatureHighTime"=>1542006000, "temperatureLow"=>6.05, "temperatureLowTime"=>1542070800, "apparentTemperatureHigh"=>15.56, "apparentTemperatureHighTime"=>1541998800, "apparentTemperatureLow"=>-0.91, "apparentTemperatureLowTime"=>1542074400, "dewPoint"=>10.93, "humidity"=>0.97, "pressure"=>1023.72, "windSpeed"=>1.31, "windGust"=>8.18, "windGustTime"=>1542013200, "windBearing"=>226, "cloudCover"=>0.77, "uvIndex"=>2, "uvIndexTime"=>1541998800, "visibility"=>4.51, "ozone"=>290.76, "temperatureMin"=>7.83, "temperatureMinTime"=>1542042000, "temperatureMax"=>20.25, "temperatureMaxTime"=>1542006000, "apparentTemperatureMin"=>4.24, "apparentTemperatureMinTime"=>1542024000, "apparentTemperatureMax"=>15.56, "apparentTemperatureMaxTime"=>1541998800}, {"time"=>1542045600, "summary"=>"Snow (1–3 in.) until afternoon.", "icon"=>"snow", "sunriseTime"=>1542073774, "sunsetTime"=>1542109779, "moonPhase"=>0.18, "precipIntensity"=>0.0064, "precipIntensityMax"=>0.0088, "precipIntensityMaxTime"=>1542085200, "precipProbability"=>0.38, "precipAccumulation"=>2.922, "precipType"=>"snow", "temperatureHigh"=>13.13, "temperatureHighTime"=>1542088800, "temperatureLow"=>-0.43, "temperatureLowTime"=>1542142800, "apparentTemperatureHigh"=>5.41, "apparentTemperatureHighTime"=>1542088800, "apparentTemperatureLow"=>-7.37, "apparentTemperatureLowTime"=>1542160800, "dewPoint"=>5.99, "humidity"=>0.99, "pressure"=>1027.92, "windSpeed"=>2.74, "windGust"=>8.93, "windGustTime"=>1542096000, "windBearing"=>271, "cloudCover"=>1, "uvIndex"=>2, "uvIndexTime"=>1542085200, "visibility"=>0.13, "ozone"=>304.71, "temperatureMin"=>0.03, "temperatureMinTime"=>1542128400, "temperatureMax"=>13.13, "temperatureMaxTime"=>1542088800, "apparentTemperatureMin"=>-4.07, "apparentTemperatureMinTime"=>1542106800, "apparentTemperatureMax"=>7.61, "apparentTemperatureMaxTime"=>1542045600}]}
Thank you for using Command Line Forecast!`

**With missing parameters:**

`forecast -a 40.7128 -o 74.0069`

`missing params. 
Thank you for using Command Line Forecast!`


## notes and next steps 

* Minutely breakdown doesn't function as expected -- `options[:minutely]` returns `nil`. Could be a bug or a rate limit issue.

* Refactor lengthy conditionals in `runner.rb`

* Add unit tests
