class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.integer :location_id
      t.string :name
      t.integer :capacity

      t.timestamps
    end
  end
end
