class Location < ActiveRecord::Base
  attr_accessible :address, :city, :name

  has_many :classrooms
  has_many :courses, through: :classrooms
end
