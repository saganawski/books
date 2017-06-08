class Link < ApplicationRecord
	belongs_to :book

	validates :book_id, :link, presence: true
	vailidate :book_id, :link, uniqueness: true
end
