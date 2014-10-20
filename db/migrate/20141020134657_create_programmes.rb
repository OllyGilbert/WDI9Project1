class CreateProgrammes < ActiveRecord::Migration
  def change
    create_table :programmes do |t|
      t.integer :course_ids

      t.timestamps
    end
  end
end
