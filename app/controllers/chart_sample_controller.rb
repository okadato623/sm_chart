class ChartSampleController < ApplicationController
  def index
    @results = Result.all
    gon.date = []
    gon.playCount = []
    arDate = Result.pluck(:DateTime)
    eachDate = arDate.each_with_object(Hash.new(0)){|v,o| o[v]+=1}
    eachDate.each_value do |v|
      gon.playCount << v
    end
    eachDate.each_key do |k|
      gon.date << k.to_date.strftime("%m月%d日")
    end
  end
end