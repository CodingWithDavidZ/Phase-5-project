class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :created, :user_id
  belongs_to :tickets
end
