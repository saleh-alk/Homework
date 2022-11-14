class User < ApplicationRecord

    validates :username, presence: true, uniquenss: true
    validates :session_token, presence: true, uniquenss: true
    validates :password_digest, presence: {message: "Password can't be blank"}
    validates :password, length: { minimum: 8, allow_nil: true }
    before_validation :ensure_session_token


    attr_reader :password

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        return nil if user.nil?
        user.is_password?(password) ? user : nil
      end

    def password=(password)
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password.new(password_digest).is_password?(password)
    end

    def reset_session_token!
        self.session_token = generate_unique_session_token
        self.save!
        self.session_token
    end

    def generate_unique_session_token

        loop do
          session_token = SecureRandom::urlsafe_base64(16)
          return session_token unless User.exists?(session_token: session_token)
        end
    end


    def ensure_session_token
        self.session_token ||= generate_unique_session_token
    end




end
