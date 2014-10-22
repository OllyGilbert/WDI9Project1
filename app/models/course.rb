class Course < ActiveRecord::Base
  attr_accessible :classroom_id, :description, :end_at, :name, :price, :programme_id, :start_at, :genre, :producer_ids, :student_ids, :instructor_ids, :location_id

  # has_event_calendar

  belongs_to :classroom
  has_one :location, through: :classroom
  belongs_to :programme

  has_and_belongs_to_many :students, class_name: "User", conditions: ["role=?", "student"]
  has_and_belongs_to_many :instructors, class_name: "User", conditions: ["role=?", "instructor"]
  has_and_belongs_to_many :producers, class_name: "User", conditions: ["role=?", "producer"]

  def available_classrooms
    classrooms_one = Course.where(start_at: (self.start_at..self.end_at)).where(genre: self.genre).reject do |course|
        course.id == self.id
      end.pluck(:classroom_id)
    classrooms_two = Course.where(end_at: (self.start_at..self.end_at)).where(genre: self.genre).reject do |course|
        course.id == self.id
      end.pluck(:classroom_id)
    binding.pry
    unavailable_classroom_ids = classrooms_one + classrooms_two
    #Removing all of the unavailable classrooms from the classrooms array;
    available_classrooms = Classroom.all.reject do |classroom|
      unavailable_classroom_ids.include? classroom.id
    end
  end


end