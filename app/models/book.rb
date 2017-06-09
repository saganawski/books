class Book < ApplicationRecord
	has_many :votes
	has_many :links
	has_many :comments

	validates :title, :author, presence: true
	validates :title, uniqueness: true
end
