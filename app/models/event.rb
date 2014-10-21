class Event < ActiveRecord::Base
  attr_accessible :start_at, :end_at, :name, :course_id 
  has_event_calendar
end
