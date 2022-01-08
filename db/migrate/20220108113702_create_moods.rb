class CreateMoods < ActiveRecord::Migration[6.0]
  def change
    create_table :moods do |t|
      t.integer :rating
      t.integer :rating2
      t.integer :rating3

      t.timestamps
    end
  end
end
