class TicketSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :department, :priority, :issue_description, :submitted_by, :image_url, :start, :close, :creator, :created, :modified, :modified_by, :comment_id, :approved
end
