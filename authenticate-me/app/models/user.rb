# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string           not null
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :username, length: { in: 3..30 }, uniqueness: true, format: { without: URI::MailTo::EMAIL_REGEXP, message: "can't be an email" }
  validates :email, length: { in: 3..225 }, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :session_token, presence: true, uniqueness: true
  validates :password,  length: { in: 6..255 }, allow_nil: true
  #validates :password_digest, presence: true

  before_validation :ensure_session_token
  has_secure_password




    def self.find_by_credentials(email, password)
        user = User.find_by(email: email)

        if user && user.is_password?(password)
            user
        else
            nil
        end
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def reset_session_token!
        self.session_token = generate_session_token
        self.save
        self.session_token
    end


    private

    def generate_session_token
        token = SecureRandom.base64(16)

        while User.exists?(token)
            token = SecureRandom.base64(16)
        end

        token
    end

    def ensure_session_token
        self.session_token ||= generate_session_token
    end
end
