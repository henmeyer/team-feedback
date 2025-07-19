class User < ApplicationRecord
  has_many :account_users, dependent: :destroy
  has_many :accounts, through: :account_users
  has_many :given_feedbacks, class_name: "Feedback", foreign_key: :sender_id, dependent: :destroy
  has_many :received_feedbacks, as: :receiverable, class_name: "Feedback", dependent: :destroy
  has_many :team_users, dependent: :destroy
  has_many :teams, through: :team_users

  validates :name, presence: true
  validates :email, presence: true
  validates :password_digest, presence: true
end
