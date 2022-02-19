class AddImageUrlToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :image_url, :string
  end
end
