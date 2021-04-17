class RemoveRatingFromMoods < ActiveRecord::Migration[6.0]
  def change
    remove_column :moods, :rating, :string
  end
end
