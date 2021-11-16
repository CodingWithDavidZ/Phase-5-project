class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :created, :creator
  belongs_to :tickets
end
