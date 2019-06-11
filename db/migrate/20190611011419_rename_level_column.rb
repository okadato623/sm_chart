class RenameLevelColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :results, :Level, :level
    rename_column :results, :Title, :title
    rename_column :results, :DateTime, :datetime
    rename_column :results, :Cleared, :cleared
    rename_column :results, :Difficulty, :difficulty
    rename_column :results, :Score, :score
    rename_column :results, :SurviveSeconds, :survive_seconds
    rename_column :results, :Grade, :grade
  end
end