class CreateSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :spots do |t|
      t.string :address
      t.string :spot_difficulty
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true
      t.string :photo_url

      t.timestamps
    end
  end
end
