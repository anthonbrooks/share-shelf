class User < ApplicationRecord
  validates_presence_of :email, :username, :password_digest
  validates :email, uniqueness: true
  has_secure_password
  has_many :posts
end
