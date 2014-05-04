require 'open-uri'
require 'json'

class CoordsController < ApplicationController
  def fetch_weather
    @latitude = 42.0538387
    @longitude = -87.67721
    your_api_key = "96232975635a7f0140dccd6f3afd0d74"
    #@address = @latitude.to_s","@longitude.to_s

    url = "https://api.forecast.io/forecast/96232975635a7f0140dccd6f3afd0d74/42,-87"

    raw_data=open(url).read
    parsed_data=JSON.parse(raw_data)
    results=parsed_data["results"]
    first=results[0]
    currently=first["currently"]
    @temperature=currently["temperature"]
    #minutely=first["minutely"]
    #@minutely_summary=minutely["summary"]

    # Your code goes here.
    # url = ?
    # raw_data = ?
    # parsed_data = ?
    # @temperature = ?

    # @hourly_summary = ?
    # @daily_summary = ?
  end
end
