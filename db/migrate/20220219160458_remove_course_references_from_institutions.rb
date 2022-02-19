class RemoveCourseReferencesFromInstitutions < ActiveRecord::Migration[6.1]
  def change
    remove_column :institutions, :course_id, :references
  end
end
