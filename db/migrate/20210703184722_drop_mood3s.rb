class DropMood3s < ActiveRecord::Migration[6.0]
  def change
    drop_table :mood3s
  end
end
