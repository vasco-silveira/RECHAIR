class AddCoordinatesToInstitutions < ActiveRecord::Migration[6.1]
  def change
    add_column :institutions, :latitude, :float
    add_column :institutions, :longitude, :float
  end
end
