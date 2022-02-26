class AddStatusToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :institutions, :user_id, :integer
  end
end
