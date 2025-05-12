class User < ApplicationRecord
  has_many :account_users, dependent: :destroy
  has_many :accounts, through: :account_users
end
