require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do

    it "is valid with valid attributes" do
      user = User.create(name: 'Maria', email: 'mf@test.com', password: '123456', password_confirmation: '123456')
      expect(user).to be_valid
    end

    it "is valid when password and password_confirmation match" do
      user = User.create(name: 'Maria', email: 'mf@test.com', password: '123456', password_confirmation: '123456')
      expect(user).to be_valid
    end

    it "is not valid if password and password_confirmation do not match" do
      user = User.create(name: 'Maria', email: 'mf@test.com', password: '123456', password_confirmation: '1234567')
      expect(user).to_not be_valid
    end

    it "is not valid if the email matches an email that is already in the database" do
      user = User.create(name: 'Maria', email: 'TEST@TEST.com', password: '123456', password_confirmation: '123456')
      user2 = User.create(name: 'Maria', email: 'test@test.COM', password: '654321', password_confirmation: '654321')
      expect(user2).to_not be_valid
    end

    it "is valid if the password is at least 6 characters long" do
      user = User.create(name: 'Maria', email: 'TEST@TEST.com', password: '654321', password_confirmation: '654321')
      expect(user).to be_valid
    end
  end

  describe '.authenticate_with_credentials' do
    it "is a valid user if their email and password has been authenticated" do
      @user = User.create(name: 'Yoyo', email: 'TEST@TEST.com', password: '654321', password_confirmation: '654321')
      user1 = User.authenticate_with_credentials(@user.email, @user.password)
      expect(user1).to be_truthy
    end 

    it "is valid even if there are trailing whitespaces" do
      @user = User.create(name: 'Yoyo', email: 'TEST@TEST.com', password: '654321', password_confirmation: '654321')
      user1 = User.authenticate_with_credentials(' TEST@TEST.com ', '654321')
      expect(user1).to be_truthy
    end

    it "is valid even if a user types in the wrong case for their email" do
      @user = User.create(name: 'Yoyo', email: 'test@TEST.com', password: '654321', password_confirmation: '654321')
      user1 = User.authenticate_with_credentials('test@TEST.com', '654321')
      expect(user1).to be_truthy
    end
    
  end

end