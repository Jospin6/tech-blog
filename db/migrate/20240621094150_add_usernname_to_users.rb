class AddUsernnameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :skills, :string
    add_column :users, :bio, :text
    add_column :users, :image, :text
    add_index :users, :username, unique: true
  end
end
