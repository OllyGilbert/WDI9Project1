class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.datetime :start_at
      t.datetime :end_at
      t.string :genre
      t.integer :programme_id
      t.integer :classroom_id
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
