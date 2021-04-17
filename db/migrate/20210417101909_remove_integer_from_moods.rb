class RemoveIntegerFromMoods < ActiveRecord::Migration[6.0]
  def change
    remove_column :moods, :integer, :string
  end
end
