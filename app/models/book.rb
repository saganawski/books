class Book < ApplicationRecord
	has_many :votes

	validates :title, :author, presence: true
	validates :title, :author, uniqueness: true
end
