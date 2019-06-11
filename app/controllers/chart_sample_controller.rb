class ChartSampleController < ApplicationController
  def index
    dates = []
    gon.dates = []
    gon.allResults = []
    Result.pluck(:datetime, :cleared, :level, :title, :difficulty, :score, :survive_seconds, :grade).reverse.each{ |result|
      result[0] = result[0].to_date.strftime("%-m月%-d日")
      result[4] = convert_difficulty(result[4])
      result[6] = convert_surviveseconds(result[6], result[7])
      result[7] = convert_result(result[7])
      gon.allResults << result
      dates << result[0]
    }
    gon.dates = dates.uniq

    @targetSong = TargetSong.all
    gon.targetSongs = @targetSong

    @newSong = TargetSong.new
  end

  def detail
    gon.allResults = []
    Result.where(title: "初音ミクの消失").pluck(:datetime, :cleared, :level, :title, :difficulty, :score, :survive_seconds, :grade).each{ |result|
      result[0] = result[0].to_date.strftime("%-m月%-d日")
      result[4] = convert_difficulty(result[4])
      result[6] = convert_surviveseconds(result[6], result[7])
      result[7] = convert_result(result[7])
      gon.allResults << result
    }
  end

  def convert_difficulty(input)
    case input
    when "Beginner"
      "BEGINNER"
    when "Easy"
      "BASIC"
    when "Medium"
      "DIFFICULT"
    when "Hard"
      "EXPERT"
    when "Challenge"
      "CHALLENGE"
    end
  end

  def convert_surviveseconds(input, grade)
    if grade != "Failed"
      "-"
    else
      sprintf( "%.1f", input)
    end
  end

  def convert_result(input)
    case input
    when "Failed"
      "FAILED"
    when "Tier01"
      "AAA"
    when "Tier02"
      "AA"
    when "Tier03"
      "A"
    when "Tier04"
      "B"
    when "Tier05"
      "C"
    when "Tier06"
      "D"
    when "Tier07"
      "E"
    end
  end
end