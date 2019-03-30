require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    it 'should have a valid factory' do
      expect(build :user).to be_valid
    end

    it 'should check presence of email' do
      user = build :user, email: nil
      expect(user).not_to be_valid
      expect(user.errors.messages[:email]).to include("can't be blank")
    end

    it 'should check presence of first name' do
      user = build :user, first_name: nil
      expect(user).not_to be_valid
      expect(user.errors.messages[:first_name]).to include("can't be blank")
    end

    it 'should check presence of last name' do
      user = build :user, last_name: nil
      expect(user).not_to be_valid
      expect(user.errors.messages[:last_name]).to include("can't be blank")
    end

    it 'should check presence of date of birth' do
      user = build :user, date_of_birth: nil
      expect(user).not_to be_valid
      expect(user.errors.messages[:date_of_birth]).to include("can't be blank")
    end

    it 'should check presence of profile picture' do
      user = build :user, profile_picture: nil
      expect(user).not_to be_valid
      expect(user.errors.messages[:profile_picture]).to include("can't be blank")
    end
  end    
end
