class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
=begin
      t.string :name
      t.integer :tickets
      t.integer :nausea_rating
      t.integer :happiness_rating
      t.integer :min_height
=end
      t.integer :user_id
      t.integer :attraction_id

      t.timestamps
    end
  end
end
