require 'rails_helper'

RSpec.describe Team, type: :model do
  describe "associations" do
    it { should belong_to(:account) }
    it { should belong_to(:owner).class_name('User') }
    it { should have_many(:team_users).dependent(:destroy) }
    it { should have_many(:users).through(:team_users) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
  end

  describe "valid factory" do
    it "creates a valid team" do
      team = build(:team)
      expect(team).to be_valid
    end
  end
end
