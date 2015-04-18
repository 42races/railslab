class User < ActiveRecord::Base
  USERNAME_REGEX = /\A[a-zA-Z][a-zA-Z0-9_]*\z/

  has_secure_password

  validates :username, presence: true, uniqueness: true,
    format: {
      with: USERNAME_REGEX,
      message: 'only letters and digits are allowed'
    },

    length: {
      in: 4..10
    }
end
