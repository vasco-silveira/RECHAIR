class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :professor
      t.string :title
      t.text :description
      t.string :subject
      t.integer :price
      t.date :start_date
      t.date :end_date
      t.integer :rating

      t.timestamps
    end
  end
end
