class User < ApplicationRecord

    validates :username, presence: true, uniquenss: true
    validates :session_token, presence: true, uniquenss: true
    validates :password_digest, presence: {message: "Password can't be blank"}
    validates :password, length: { minimum: 8, allow_nil: true }

    def self.find_by_credentials
        user = User.find_by(username: username)

        user.is_password?(password) ? user : nil

    end

    def is_password?(password)
        BCrypt::Password.new(password_digest).is_password?(password)
    end

    def generate_unique_session_token
        

    end




end
