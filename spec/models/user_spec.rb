require 'rails_helper'

RSpec.describe User, type: :model do
  describe "associations" do
    it { should have_many(:account_users) }
    it { should have_many(:accounts).through(:account_users) }
    it { should have_many(:given_feedbacks).class_name('Feedback').with_foreign_key(:sender_id).dependent(:destroy) }
    it { should have_many(:received_feedbacks).class_name('Feedback').dependent(:destroy) }
    it { should have_many(:team_users) }
    it { should have_many(:teams).through(:team_users) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
  end

  describe "valid factory" do
    it "creates a valid user" do
      user = build(:user)
      expect(user).to be_valid
    end
  end
end
