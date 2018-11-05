require 'dotenv/load'
require 'rubygems'
require 'excon'
require 'json'

class DarkSky

  def initialize(latitude, longitude, granularity)
    @latitude = latitude
    @longitude = longitude
    @api_key = ENV['API_KEY']
    @granularity = granularity
  end

  def get_weather
    conn = Excon.get("https://api.darksky.net/forecast/#{@api_key}/#{@latitude},#{@longitude}")
    response = JSON.parse(conn.body)
    case @granularity
    when 'currently'
      p get_current(response)
    when 'minutely'
      p 'minutely forecast under construction.'
    when 'hourly'
      p get_hourly(response)
    when 'daily'
      p get_daily(response)
    else
      p invalid_param_message
    end
  end

  def invalid_param_message
    'Enter a granularity for the forecast.'
  end

  def get_current(response)
    response['currently']
  end

  # This seems like a bug or a rate limit issue-- minutely always returns nil.

  # def get_minutely(response)
  #   response['minutely']
  # end

  def get_hourly(response)
    response['hourly']
  end

  def get_daily(response)
    response['daily']
  end

end
