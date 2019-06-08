class ChartSampleController < ApplicationController
  def index
    @results = Result.all
    gon.dates = []
    gon.allResults = []
    Result.pluck(:DateTime, :Cleared, :Level, :Dir, :Difficulty, :Grade).each{ |result|
      result[0] = result[0].to_date.strftime("%m月%d日")
      gon.allResults << result
      gon.dates << result[0]
    }
  end
end