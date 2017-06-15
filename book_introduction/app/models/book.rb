class Book < ApplicationRecord

	has_many :comments
	validates :title, :price, :rating, presence:true
	validates :rating, numericality: {less_than_or_equal_to: 10}
end
