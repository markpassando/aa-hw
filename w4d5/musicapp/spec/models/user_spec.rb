require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { User.create(email: "blah", password: "password123") }
  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password)
          .is_at_least(6) }
  end

  describe 'methods' do
    it "should not be nil" do
      expect(user.password_digest).to_not be_nil
    end

    it "should reset token" do
      expect(user.session_token).to_not be_nil
    end

    it "should find a user" do
      expect(User.find_user_by_credentials("blah", "password123")).to_not be_nil
    end
  end
end
