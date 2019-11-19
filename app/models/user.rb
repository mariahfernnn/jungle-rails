class User < ActiveRecord::Base

  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }

  before_save :standardize_user

  def self.authenticate_with_credentials(email, password)
    @user = User.find_by_email(standardize_email(email))
    if @user && @user.authenticate(password)
      @user
    else
      nil
    end
  end 

  def self.standardize_email(email)
    email.strip.downcase
  end

  def standardize_user
    self.email = User.standardize_email(self.email)
  end

 

  
end
