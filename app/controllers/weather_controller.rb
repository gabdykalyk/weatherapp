class WeatherController < ApplicationController
  def jsonparce
    require 'net/http'
    require 'json'
    file = File.read("./public/weather.json")
    @output = JSON.parse(file)
  end

  def current

    # Не обращаемся к API, так как количество запросов на обычном аккаунте ограничено, данные в weather.json
    # @url = 'http://dataservice.accuweather.com/currentconditions/v1/222191/historical/24?apikey=IqmAG81IVl7kdXZg3sGI5E5als6Ctwlj'
    # @uri = URI(@url)
    # @response = Net::HTTP.get(@uri)
    # @output = JSON.parse(@response)

    # Используем локальный json файл
    jsonparce
    
  end

  def historical
    jsonparce 
  end

  def max
    jsonparce
  end

  def min
    jsonparce
  end

  def avg
    jsonparce
  end


  def by_time
    jsonparce
    @timestamp = params[:q]
  end

end
