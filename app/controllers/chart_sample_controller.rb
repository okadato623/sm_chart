class ChartSampleController < ApplicationController
  def index
    @results = Result.all
    gon.dates = []
    gon.allResults = []
    Result.pluck(:DateTime, :Cleared, :Level).each{ |result|
      result[0] = result[0].to_date.strftime("%m月%d日")
      gon.allResults << result
      gon.dates << result[0]
    }

    gon.playCount = []
    arDate = Result.pluck(:DateTime)
    eachDate = arDate.each_with_object(Hash.new(0)){|v,o| o[v]+=1}
    eachDate.each_value do |v|
      gon.playCount << v
    end
  end
end