class DropMood2s < ActiveRecord::Migration[6.0]
  def change
    drop_table :mood2s
  end
end
