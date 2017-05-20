class User < ApplicationRecord
	has_secure_password

	has_many :votes

	validates :username, :email, presence: true
	validates :username, :email, presence: true
end
