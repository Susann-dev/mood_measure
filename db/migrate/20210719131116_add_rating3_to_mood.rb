class AddRating3ToMood < ActiveRecord::Migration[6.0]
  def change
    add_column :moods, :rating3, :integer
  end
end
