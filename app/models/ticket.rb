class Ticket < ApplicationRecord
    belongs_to :users_tickets
    has_many :comments
end
