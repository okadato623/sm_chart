class CreateTargetSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :target_songs do |t|
      t.integer :level
      t.string :title
      t.string :difficulty
      t.boolean :cleared
      t.string :wikilink
      t.string :movielink

      t.timestamps
    end
  end
end
