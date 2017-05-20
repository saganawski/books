class Book < ApplicationRecord
	has_many :votes

	vaildates :title, :author, presence: true
end
