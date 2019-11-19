require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    it "is valid with valid attributes" do
      user = User.create(name: 'Maria', email: 'mf@test.com', password: 'test', password_confirmation: 'test')
      expect(user).to be_valid
    end

    it "is valid when password and password_confirmation match" do
      user = User.create(name: 'Maria', email: 'mf@test.com', password: 'test', password_confirmation: 'test')
      expect(user).to be_valid
    end

    it "is not valid if password and password_confirmation do not match" do
      user = User.create(name: 'Maria', email: 'mf@test.com', password: 'test', password_confirmation: 'TEST')
      expect(user).to_not be_valid
    end

    it "is not valid if the email matches an email that is already in the database" do
      user = User.create(name: 'Maria', email: 'TEST@TEST.com', password: 'test', password_confirmation: 'test')
      user2 = User.create(name: 'Maria', email: 'test@test.COM', password: 'test', password_confirmation: 'test')
      expect(user2).to_not be_valid
    end
  end
end
