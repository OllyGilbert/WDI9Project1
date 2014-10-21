class User < ActiveRecord::Base
  attr_accessible :name, :role, :course_ids

  has_and_belongs_to_many :courses #dependent: :destroy
end
