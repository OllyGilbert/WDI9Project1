class Classroom < ActiveRecord::Base
  attr_accessible :capacity, :location_id, :name

  belongs_to :location, dependent: :destroy
  has_many :courses
end
