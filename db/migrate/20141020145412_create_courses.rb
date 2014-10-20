class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :name
      t.datetime :start_at
      t.datetime :end_at
      t.boolean :all_day, :default => false
      t.integer :programme_id
      t.integer :classroom_id
      t.decimal :price
      t.text :description
      t.text :notes
      
      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
