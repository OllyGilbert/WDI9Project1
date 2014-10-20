class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :name
      t.integer :location_id
      t.integer :capacity

      t.timestamps
    end
  end
end
