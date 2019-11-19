require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it "is valid with valid attributes" do
      expect(User.new).to be_valid
    end
    
    it "is valid when password and password_confirmation match"
    it "is not valid if password and password_confirmation do not match"
    it "is valid if the email matches the email in the database"
  end
end
