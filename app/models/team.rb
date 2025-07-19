class Team < ApplicationRecord
  belongs_to :account
  belongs_to :owner, class_name: "User"

  has_many :team_users, dependent: :destroy
  has_many :users, through: :team_users
  has_many :feedbacks, as: :receiverable, dependent: :destroy

  validates :name, presence: true
end
