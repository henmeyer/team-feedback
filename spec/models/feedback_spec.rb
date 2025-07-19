require 'rails_helper'

RSpec.describe Feedback, type: :model do
  describe "associations" do
    it { should belong_to(:sender).class_name('User') }
    it { should belong_to(:receiverable) }
    it { should belong_to(:account) }
  end

  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:sender) }
  end

  describe "valid factory" do
    it "creates a valid feedback" do
      feedback = build(:feedback)
      expect(feedback).to be_valid
    end
  end
end
