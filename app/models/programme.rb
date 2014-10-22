class Programme < ActiveRecord::Base
  attr_accessible :name, :description

  has_many :courses
end
