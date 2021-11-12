class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :created, :creator
end
