class CreateInstitutions < ActiveRecord::Migration[6.1]
  def change
    create_table :institutions do |t|
      t.string :address
      t.string :name
      t.text :description
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
