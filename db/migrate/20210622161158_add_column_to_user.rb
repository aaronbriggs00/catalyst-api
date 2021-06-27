class AddColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :gender, :string
    add_column :users, :phone_numbwer, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :bio, :text
    add_column :users, :title, :string
  end
end
