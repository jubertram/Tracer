class CreateSpotMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :spot_moves do |t|
      t.references :move, null: false, foreign_key: true
      t.references :spot, null: false, foreign_key: true
      t.string :move_difficulty
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
