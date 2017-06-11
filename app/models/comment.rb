class Comment < ApplicationRecord
	belongs_to :book
	belongs_to :commenter, class_name: 'User'

	validates :text, :book_id, presence: true
end
