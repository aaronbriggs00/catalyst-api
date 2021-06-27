class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :personal_website_link, :string
    add_column :users, :instagram_link, :string
    add_column :users, :twitter_link, :string
    add_column :users, :facebook_link, :string
    add_column :users, :github_link, :string
    add_column :users, :country, :string
    add_column :users, :city, :string
    add_column :users, :organization, :string
    add_column :users, :preferred_language, :string
    remove_column :users, :name
  end
end
