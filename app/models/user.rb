class User < ApplicationRecord
    has_secure_password
    validates :first_name, :last_name, presence: true
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Email invalid"  },
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 254 }, presence: true

    has_many :tickets, through: :ticket_users
    has_many :comments, through: :tickets
    belongs_to :team
    
end
