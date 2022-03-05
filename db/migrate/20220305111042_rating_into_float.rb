class RatingIntoFloat < ActiveRecord::Migration[6.1]
  def change
    remove_column :courses, :rating, :integer
    add_column :courses, :rating, :float
  end
end
