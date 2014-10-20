class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.integer :campus_id
      t.string :name
      t.integer :capacity
      t.integer :course_ids

      t.timestamps
    end
  end
end
