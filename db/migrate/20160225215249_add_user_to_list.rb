class AddUserToList < ActiveRecord::Migration
  def change
    add_column :lists, :user_id, :integer
    add_foreign_key :lists, :users, column: :user_id
    add_index :lists, :user_id
  end
end
