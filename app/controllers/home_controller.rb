require 'net/http'
API_KEY = "a02b20528e4c4c07a18115059241605"
FORECAST = 5

def home(location)
  url = "http://api.weatherapi.com/v1/forecast.json?key=#{API_KEY}&q=#{location}&days=#{FORECAST}&aqi=no&alerts=no"
  uri = URI(url)
  res = Net::HTTP.get_response(uri)
  @data = JSON.parse(res.body)
  @current = @data["current"]
  @forecast = @data["forecast"]["forecastday"]

  last_day1 = Date.today.send(:-, 1.day)
  last_day2 = Date.today.send(:-, 2.day)

  url_history1 = "http://api.weatherapi.com/v1/history.json?key=#{API_KEY}&q=#{location}&dt=#{last_day1}"
  uri_history1 = URI(url_history1)
  res_history1 = Net::HTTP.get_response(uri_history1)
  @data_history1 = JSON.parse(res_history1.body)
  @last1 = @data_history1["forecast"]["forecastday"]

  url_history2 = "http://api.weatherapi.com/v1/history.json?key=#{API_KEY}&q=#{location}&dt=#{last_day2}"
  uri_history2 = URI(url_history2)
  res_history2 = Net::HTTP.get_response(uri_history2)
  @data_history2 = JSON.parse(res_history2.body)
  @last2 = @data_history2["forecast"]["forecastday"]
end



class HomeController < ApplicationController

  def index

    if params[:q].blank?
      home("London")
    else
      home(params[:q])
    end
  end

end
