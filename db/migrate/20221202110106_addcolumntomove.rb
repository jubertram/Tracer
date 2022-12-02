class Addcolumntomove < ActiveRecord::Migration[7.0]
  def change
    add_column :moves, :pre_requis, :text
    add_column :moves, :attention, :text
  end
end
