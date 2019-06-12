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
    p gon.allResults

    @targetSong = TargetSong.all
    gon.targetSongs = @targetSong

    @newSong = TargetSong.new
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
      "AAA PFC"
    when "Tier02"
      "AAA"
    when "Tier03"
      "AA+"
    when "Tier04"
      "AA"
    when "Tier05"
      "AA-"
    when "Tier06"
      "A+"
    when "Tier07"
      "A"
    when "Tier08"
      "A-"
    when "Tier09"
      "B+"
    when "Tier10"
      "B"
    when "Tier11"
      "B-"
    when "Tier12"
      "C+"
    when "Tier13"
      "C"
    when "Tier14"
      "C-"
    when "Tier15"
      "D+"
    when "Tier16"
      "D"
    end
  end
end