class AddRating2ToMood < ActiveRecord::Migration[6.0]
  def change
    add_column :moods, :rating2, :integer
  end
end
