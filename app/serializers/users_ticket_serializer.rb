class UsersTicketSerializer < ActiveModel::Serializer
  attributes :id, :ticket_id, :user_id

  belongs_to :user
  belongs_to :ticket

end
