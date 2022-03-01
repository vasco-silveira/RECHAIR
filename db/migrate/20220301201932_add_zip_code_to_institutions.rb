class AddZipCodeToInstitutions < ActiveRecord::Migration[6.1]
  def change
    add_column :institutions, :zipcode, :string
  end
end
