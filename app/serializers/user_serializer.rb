class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :email, :phone, :role_id, :password_digest, :avatar_url, :team_id
end
