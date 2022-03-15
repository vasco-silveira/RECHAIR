class Addpictoprofile < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :profile_pic_url, :string
  end
end
