class CreateMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.string :level
      t.string :video
      t.text :description

      t.timestamps
    end
  end
end
