class Book < ApplicationRecord
	has_many :votes
	has_many :links

	validates :title, :author, presence: true
	validates :title, uniqueness: true
end
