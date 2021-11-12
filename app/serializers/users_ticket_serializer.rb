class UsersTicketSerializer < ActiveModel::Serializer
  attributes :id, :ticket_id, :user_id
end
