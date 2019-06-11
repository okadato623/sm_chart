class ResultsController < ChartSampleController
  def list
    @results = Result.all
  end

  def detail
    gon.allResults = []
    # Result.order('score DESC').where("title LIKE '初音%' AND cleared = TRUE").limit("3").pluck(:datetime, :cleared, :level, :title, :difficulty, :score, :survive_seconds, :grade).each{ |result|
    Result.pluck(:datetime, :cleared, :level, :title, :difficulty, :score, :survive_seconds, :grade).each{ |result|
      result[0] = result[0].to_date.strftime("%-m月%-d日")
      result[4] = convert_difficulty(result[4])
      result[6] = convert_surviveseconds(result[6], result[7])
      result[7] = convert_result(result[7])
      gon.allResults << result
    }

    @songList = Result.new

    @results = Result.all
    @all_titles = [""]
    @results.each do |result|
      @all_titles << result[:title]
    end
    @all_titles.uniq!.compact!.sort!
  end
end
