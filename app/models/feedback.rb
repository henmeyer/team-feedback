class Feedback < ApplicationRecord
  belongs_to :account
  belongs_to :sender, class_name: "User"
  belongs_to :receiverable, polymorphic: true

  validates :title, presence: true
  validates :content, presence: true
  validates :sender, presence: true
end
