class User < ActiveRecord::Base
  attr_accessible :name, :role, :course_ids

  has_and_belongs_to_many :courses #dependent: :destroy
end

# class Course < ActiveRecord::Base
#   attr_accessible :name, :start_at, :end_at, :all_day, :programme_id, :classroom_id, :price, :description, :notes, :producer_ids, :student_ids, :instructor_ids
#   has_event_calendar

#   belongs_to :classroom
#   belongs_to :programme

#   has_and_belongs_to_many :students, class_name: "User", conditions: ["role=?", student]
#   has_and_belongs_to_many :instructors, class_name: "User", conditions: ["role=?", instructor]
#   has_and_belongs_to_many :producers, class_name: "User", conditions: ["role=?", "producer"]
# end

