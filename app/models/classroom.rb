class Classroom < ActiveRecord::Base
  attr_accessible :campus_id, :capacity, :course_ids, :name
end
