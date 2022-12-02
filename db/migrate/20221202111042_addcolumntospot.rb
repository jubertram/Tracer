class Addcolumntospot < ActiveRecord::Migration[7.0]
  def change
    add_column :spots, :name, :text
  end
end
