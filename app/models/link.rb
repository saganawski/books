class Link < ApplicationRecord
	belongs_to :book

	validates :book_id, :link, presence: true
	validates :book_id, :link, uniqueness: true
end
