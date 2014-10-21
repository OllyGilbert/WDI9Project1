class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :name, :role, :course_ids, :email, :password, :password_confirmation, :password_digest

  has_and_belongs_to_many :courses #dependent: :destroy
  
  validates :password, presence: true, on: :create
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
end


