class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :name, :course_ids, :email, :password, :password_confirmation, :password_digest

  has_and_belongs_to_many :courses #dependent: :destroy
  
  validates :password, presence: true, on: :create
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }

  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end

  # after_create :assign_role

  # def assign_role

  # end
end


