class Ticket < ApplicationRecord
  has_many :users_tickets
  has_many :users, through: :users_tickets
  has_many :comments
end
