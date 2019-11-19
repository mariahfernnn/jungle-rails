class User < ActiveRecord::Base

  has_secure_password

  # validates :name, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  # validates :password, confirmation: true
  # validates :password_confirmation, presence: true
  
end
