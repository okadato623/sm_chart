class ChartSampleController < ApplicationController
  def index
    gon.dates = []
    gon.allResults = []
    Result.pluck(:DateTime, :Cleared, :Level, :Title, :Difficulty, :Grade).reverse.each{ |result|
      result[0] = result[0].to_date.strftime("%m月%d日")
      gon.allResults << result
      gon.dates << result[0]
    }
  end
end