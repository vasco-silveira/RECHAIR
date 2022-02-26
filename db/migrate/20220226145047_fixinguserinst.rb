class Fixinguserinst < ActiveRecord::Migration[6.1]
  def change
    remove_column :institutions, :user_id, :integer
    add_column :institutions, :admin_user_id, :integer
  end
end
