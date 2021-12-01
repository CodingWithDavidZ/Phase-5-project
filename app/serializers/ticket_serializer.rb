class TicketSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :department,
             :priority,
             :issue_description,
             :submitted_by,
             :image_url,
             :start,
             :close,
             :creator,
             :created,
             :modified,
             :modified_by,
             :comment_id,
             :approved

  belongs_to :users_tickets
  has_many :comments
end
