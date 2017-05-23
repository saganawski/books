class Book < ApplicationRecord
	has_many :votes

	validates :title, :author, presence: true
end
