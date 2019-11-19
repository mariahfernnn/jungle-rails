class User < ActiveRecord::Base

  has_secure_password

  # EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  validates :name, presence: true
  validates :email, presence: true, confirmation: { case_sensitive: false }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  
end
