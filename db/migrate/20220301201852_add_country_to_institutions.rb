class AddCountryToInstitutions < ActiveRecord::Migration[6.1]
  def change
    add_column :institutions, :country, :string
  end
end
