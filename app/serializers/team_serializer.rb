class TeamSerializer < ActiveModel::Serializer
  attributes :id, :lead, :department
  has_many :users
end
