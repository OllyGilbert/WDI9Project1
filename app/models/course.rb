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
    #Select all the courses that start in the range of new course dates
    course_start = Course.where(
      genre: self.genre,
      start_at: (self.start_at..self.end_at)
    ) 
    #Select all the courses that end in the range of new course dates
    course_end = Course.where(
      genre: self.genre,
      end_at: (self.start_at..self.end_at)
    )
   
    #Add results together, reject the current course and map course ids
    overlapping_course_ids = (course_start + course_end).reject{|course| course.id == self.id}
    
    if overlapping_course_ids
      overlapping_course_ids_map = overlapping_course_ids.map(&:classroom_id)
      #Removing all of the unavailable classrooms from the classrooms array;
      available_classrooms = Classroom.all.reject do |classroom|
        overlapping_course_ids_map.include? classroom.id
      end
    else
      Classroom.all
    end
  end


end