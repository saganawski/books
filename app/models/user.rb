class User < ApplicationRecord
	has_secure_password

	has_many :votes

	validates :username, :email, :password, presence: true
	validates :username, :email, uniqueness: true
end
