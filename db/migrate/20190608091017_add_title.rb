class AddTitle < ActiveRecord::Migration[5.0]
  def change
    add_column :results, :Title, :string
  end
end
