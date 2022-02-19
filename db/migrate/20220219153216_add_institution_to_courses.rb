class AddInstitutionToCourses < ActiveRecord::Migration[6.1]
  def change
    add_reference :courses, :institution, null: false, foreign_key: true
  end
end
