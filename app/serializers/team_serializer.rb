class TeamSerializer < ActiveModel::Serializer
  attributes :id, :lead, :department
end
