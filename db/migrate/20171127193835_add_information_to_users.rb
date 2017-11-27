class AddInformationToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    add_column :users, :firstName, :string
    add_column :users, :lastname, :string
    add_column :users, :adress, :string
  end
end
