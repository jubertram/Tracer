class AddUsernameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :photo, :string
    add_column :users, :bio, :text
  end
end
