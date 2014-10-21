class User < ActiveRecord::Base
  attr_accessible :name, :role, :course_ids, :email

  has_and_belongs_to_many :courses #dependent: :destroy
end

