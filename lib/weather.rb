class Weather
  attr_reader :weather
  @weather = rand(1..4)
  def mood
    if 
      @weather == 1
      return "stormy"
    else
      
      return "sunny"
    end
  end
end