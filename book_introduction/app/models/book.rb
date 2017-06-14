class Book < ApplicationRecord

	validates :title, :price, :rating, presence:true
end
