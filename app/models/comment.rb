class Comment < ApplicationRecord
	belongs_to :book

	validates :text, :book_id, presence: true
end
