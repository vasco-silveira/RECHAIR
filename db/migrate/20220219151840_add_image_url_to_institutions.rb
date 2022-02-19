class AddImageUrlToInstitutions < ActiveRecord::Migration[6.1]
  def change
    add_column :institutions, :image_url, :string
  end
end
