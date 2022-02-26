class LinkingUsersInstitutions < ActiveRecord::Migration[6.1]
  def change
    add_column :institutions, :user_id, :integer
    add_column :users, :admin, :boolean, :default => false
  end
end
