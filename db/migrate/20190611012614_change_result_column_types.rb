class ChangeResultColumnTypes < ActiveRecord::Migration[5.0]
  def change
    change_column :results, :level, 'integer USING CAST(level AS integer)'
    change_column :results, :cleared, 'boolean USING CAST(cleared AS boolean)'
    change_column :results, :score, 'integer USING CAST(score AS integer)'
    change_column :results, :survive_seconds, 'float USING CAST(survive_seconds AS float)'
  end
end
