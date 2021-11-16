class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :email, :phone, :role_id, :password_digest, :avatar_url, :team_id

  has_many :tickets through: :user_tickets
  has_many :comments through :tickets
  belongs_to :team

end
