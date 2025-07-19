require 'rails_helper'

RSpec.describe Account, type: :model do
  describe "associations" do
    it { should have_many(:teams) }
    it { should have_many(:users) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
  end

  describe "valid factory" do
    it "creates a valid account" do
      account = build(:account)
      expect(account).to be_valid
    end
  end
end
