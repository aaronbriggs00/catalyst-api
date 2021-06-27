class ChangeColumnNameInUser < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :phone_numbwer, :phone_number
  end
end
