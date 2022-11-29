class AddMoreFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :bio, :text
    add_column :users, :phone, :integer
  end
end
