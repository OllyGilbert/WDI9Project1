class Course < ActiveRecord::Base
  attr_accessible :classroom_id, :description, :end_at, :name, :price, :programme_id, :start_at, :genre, :producer_ids, :student_ids, :instructor_ids

  # has_event_calendar

  belongs_to :classroom
  belongs_to :programme

  has_and_belongs_to_many :students, class_name: "User", conditions: ["role=?", "student"]
  has_and_belongs_to_many :instructors, class_name: "User", conditions: ["role=?", "instructor"]
  has_and_belongs_to_many :producers, class_name: "User", conditions: ["role=?", "producer"]
end