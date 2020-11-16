class User < ApplicationRecord
  has_many :posts
  validates :username, presence: true
  validates :password_digest, presence: true
  has_secure_password
end
