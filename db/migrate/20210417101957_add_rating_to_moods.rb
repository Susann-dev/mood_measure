class AddRatingToMoods < ActiveRecord::Migration[6.0]
  def change
    add_column :moods, :rating, :integer
  end
end
