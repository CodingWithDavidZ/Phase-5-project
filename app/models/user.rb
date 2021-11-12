class User < ApplicationRecord
    has_secure_password
    validates :first_name, :last_name, presence: true
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
    validates :email, format: { with: /^(.+)@(.+)$/, message: "Email invalid"  },
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 254 }, presence: true
end
